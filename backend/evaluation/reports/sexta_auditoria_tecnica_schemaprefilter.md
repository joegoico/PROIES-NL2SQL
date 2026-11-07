# Auditoría Técnica de Métricas y Clasificación del Dataset — `SchemaPrefilter`
> [!NOTE]
> Esta auditoría es exclusivamente de diagnóstico. Se verificó mediante `git status` que no se ha modificado ningún archivo de código, tests, dataset, esquema maestro, configuración ni reportes existentes.
---
## 1. Definiciones verificadas de las métricas
La lógica de evaluación de `SchemaPrefilter` está distribuida en cinco módulos del paquete `backend/evaluation`:
- [`backend/evaluation/dataset_loader.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_loader.py)
- [`backend/evaluation/metrics.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py)
- [`backend/evaluation/prefilter_evaluator.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/prefilter_evaluator.py)
- [`backend/evaluation/prefilter_runner.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/prefilter_runner.py)
- [`backend/evaluation/run_prefilter_benchmark_curated.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py)
Para cada caso evaluado $i \in \{1, \dots, N\}$, sean:
- $G_i = \text{set}(\text{caso}[\text{"gold\_tables"}])}$ el conjunto de tablas relevantes esperadas.
- $R_i = \text{prefilter.obtener\_ranking}(\text{pregunta}, \text{esquema\_maestro})$ la lista ordenada de pares `(indice_tabla, score)` con `score > 0` ([`SchemaPrefilter.obtener_ranking`](file:///mnt/m2-dev/PROIES/backend/custom/schema_prefilter.py#L73-L104)).
- $P_{i,k} = \text{set}([t \text{ for } t, \_ \text{ in } R_i[:k]])$ el conjunto de hasta $k$ tablas predichas en el top-$k$.
---
### 1.1. Tratamiento de casos sin `gold_tables`
1. **En la carga del dataset ([**`**dataset_loader.py**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_loader.py#L10-L23)):**
  - [`tiene_gold(caso)`](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_loader.py#L10-L11) evalúa `caso.get("gold_tables") is not None`.
  - [`obtener_casos_evaluables(dataset, split)`](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_loader.py#L14-L23) filtra por `caso.get("split") == split and tiene_gold(caso)`.
  - Por lo tanto, los casos con `"gold_tables": null` (actualmente 9 casos en `split="pending_review"`) **son excluidos antes de ejecutar el benchmark** y no ingresan al denominador $N$.
1. **En la validación de esquema ([**`**dataset_validator.py**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_validator.py#L1-L14)):**
  - [`validar_gold_tables(caso, esquema_maestro)`](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset_validator.py#L1-L14) retorna `[]` (sin error) si `gold_tables is None`.
1. **Si un caso tuviera lista vacía **`**gold_tables = []**`** ([**`**metrics.py**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py#L1-L7)):**
  - `tiene_gold(caso)` devolvería `True` (porque `[] is not None`), y [`recall_at_k`](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py#L6-L7) tiene una guarda explícita `if not gold: return 1.0`. En el `dataset.json` actual ningún caso tiene `[]`.
---
### 1.2. `recall@k`
- **Ubicación:**
  - Cálculo por caso: [`recall_at_k`](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py#L1-L13), invocado en [`evaluar_caso_prefilter`](file:///mnt/m2-dev/PROIES/backend/evaluation/prefilter_evaluator.py#L21-L30) y en [`ejecutar_benchmark_completo`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L107-L110).
  - Agregación: [`ejecutar_prefilter_benchmark`](file:///mnt/m2-dev/PROIES/backend/evaluation/prefilter_runner.py#L32-L38) y [`ejecutar_benchmark_completo`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L149-L150).
- **Fórmula por caso:**
  - $\text{Recall@}k_i = \begin{cases} 1.0 & \text{si } |G_i| = 0 \\ \dfrac{|G_i \cap P_{i,k}|}{|G_i|} & \text{si } |G_i| > 0 \end{cases}$
- **Numerador (por caso):** $|G_i \cap P_{i,k}|$ (`len(gold.intersection(top_k))`), cantidad de tablas `gold` recuperadas en el top-$k$.
- **Denominador (por caso):** $|G_i|$ (`len(gold)`), cantidad total de tablas `gold` del caso $i$.
- **Nivel y agregación:** Se calcula **por caso** y se agrega entre casos mediante **promedio macro** (media aritmética simple sobre los $N$ casos evaluables):
  - $\text{Recall@}k_{\text{macro}} = \frac{1}{N} \sum_{i=1}^{N} \text{Recall@}k_i$
---
### 1.3. `precision@k`
- **Ubicación:** Implementada directamente dentro del bucle de [`ejecutar_benchmark_completo`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L112-L122) y agregada en las líneas [`L151-L152`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L151-L152). *(No existe como función independiente en **`metrics.py`**).*
- **Fórmula por caso:**
  - $\text{Precision@}k_i = \begin{cases} 0.0 & \text{si } |P_{i,k}| = 0 \\ \dfrac{|G_i \cap P_{i,k}|}{|P_{i,k}|} & \text{si } |P_{i,k}| > 0 \end{cases}$
- **Numerador (por caso):** $\text{TP}_{i,k} = |G_i \cap P_{i,k}|$.
- **Denominador (por caso):** $|P_{i,k}|$ (`len(predicted_5)` o `len(predicted_10)`), que es la **cantidad real de tablas devueltas por el prefiltro con **`**score > 0**`** hasta el tope **$k$, y **no la constante fija **$k$.
  - *Detalle técnico crítico:* Si el prefiltro devuelve menos de $k$ tablas con score positivo (por ejemplo, en `DEV_014` y `DEV_034` solo 6 tablas tienen `score > 0`), el denominador de `Precision@10` para ese caso es `6` (`len(predicted_10)`), no `10`.
- **Nivel y agregación:** Se calcula **por caso** y se agrega mediante **promedio macro** sobre los $N$ casos evaluables (`sum(precisions_k) / n`):
  - $\text{Precision@}k_{\text{macro}} = \frac{1}{N} \sum_{i=1}^{N} \text{Precision@}k_i$
---
### 1.4. `complete recovery@k`
- **Ubicación:** Calculada en [`ejecutar_benchmark_completo`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L115-L125) y agregada en [`L153-L156`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L153-L156).
- **Fórmula por caso:** Indicador binario que vale $1$ si $\text{Recall@}k_i == 1.0$ (es decir, $G_i \subseteq P_{i,k}$) y $0$ en caso contrario.
- **Numerador (global):** `complete_rec_k` = $\sum_{i=1}^{N} \mathbb{I}(\text{Recall@}k_i == 1.0)$, cantidad de casos donde se recuperaron **todas** las tablas `gold` dentro del top-$k$.
- **Denominador (global):** $N$ (`len(casos)`), total de casos evaluables.
- **Nivel y agregación:** Proporción global de casos completos sobre el total de casos evaluados (tanto en tanto por uno `complete_rec_k / n` como en porcentaje `(complete_rec_k / n) * 100.0`).
---
### 1.5. `TP`, `FP` y `FN`
- **Ubicación:**
  - En [`metrics.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py#L15-L19), la función [`false_negatives(gold, predicted)`](file:///mnt/m2-dev/PROIES/backend/evaluation/metrics.py#L15-L19) calcula la diferencia de conjuntos `gold - predicted` (usada en [`error_analysis.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/error_analysis.py#L27-L40)).
  - En [`ejecutar_benchmark_completo`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L118-L128), se calculan los conteos por caso para $k = \text{top\_k} = 10$ y se acumulan globalmente:
    - `tp10 = len(gold.intersection(set(predicted_10)))` $\rightarrow$ $\text{TP}_{i,10} = |G_i \cap P_{i,10}|$
    - `fp10 = len(set(predicted_10) - gold)` $\rightarrow$ $\text{FP}_{i,10} = |P_{i,10} \setminus G_i|$
    - `fn10 = len(gold - set(predicted_10))` $\rightarrow$ $\text{FN}_{i,10} = |G_i \setminus P_{i,10}|$
- **Agregación entre casos ([**`**L126-L128**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L126-L128), [**`**L157-L161**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L157-L161)):**
  - Suma global (acumulación **micro** de conteos en $k=10$):
    - $\text{TP} = \sum_{i=1}^{N} \text{TP}_{i,10}, \quad \text{FP} = \sum_{i=1}^{N} \text{FP}_{i,10}, \quad \text{FN} = \sum_{i=1}^{N} \text{FN}_{i,10}$
  - Adicionalmente, se reportan dos promedios derivados con numerador global y denominador $N$:
    - `promedio_sobrantes_por_caso = fp_total / n`
    - `promedio_omitidas_por_caso = fn_total / n`
---
### 1.6. Resumen de criterios de agregación (Macro vs. Micro)
| Métrica en reporte | Tipo de agregación en código | Observación técnica |
| --- | --- | --- |
| `recall_at_5`, `recall_at_10` | **Macro-promedio** | Promedio de los recalls de cada caso ($\frac{1}{N}\sum \text{Recall}_i$). No es micro-recall ($\frac{\text{TP}}{\text{TP}+\text{FN}}$). |
| `precision_at_5`, `precision_at_10` | **Macro-promedio** | Promedio de las precisiones de cada caso ($\frac{1}{N}\sum_{i=1}^{N}\text{Precision@}k_i$). |
| `complete_recovery_at_5/10` | **Proporción sobre **$N$** casos** | Fracción de casos con $\text{Recall@}k_i = 1.0$. |
| `tp`, `fp`, `fn` | **Suma global (en **$k=10$**)** | Conteos totales acumulados a través de los $N$ casos evaluados en `top_k=10`. |
| `latencia_p50_ms`, `latencia_p95_ms` | **Percentil por interpolación lineal** | Calculado mediante [`_calcular_percentil`](file:///mnt/m2-dev/PROIES/backend/evaluation/context_resolver_evaluator.py#L119-L154) sobre la lista ordenada de tiempos de `obtener_ranking` por caso (`posicion = (p/100) * (n - 1)`). |
---
## 2. Recalculación del dataset completo (Escenario A)
- **Configuración:** `split="dev"`, `top_k=10`.
- **Casos totales en [**`**dataset.json**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset.json):** 48 casos.
- **Casos sin **`**gold_tables**`**:** 9 casos (`DEV_022`, `DEV_038`, `DEV_045`, `DEV_051`, `DEV_052`, `DEV_054`, `DEV_055`, `DEV_058`, `DEV_059`), todos en `split="pending_review"` (0 casos sin gold dentro de `split="dev"`).
- **Casos evaluados (**$N$**):** **39 casos**.
- **Total de tablas gold (**$\sum |G_i|$**):** **107 tablas**.
### 2.1. Resultados por caso (39 casos `dev`)
| # | ID | Clasif. Auditoría | $|G_i|$ | $|P_{i,5}|$ | $|P_{i,10}|$ | $\text{TP}_5$ | $\text{FP}_5$ | $\text{FN}_5$ | $\text{Prec@5}_i$ | $\text{Rec@5}_i$ | $\text{TP}_{10}$ | $\text{FP}_{10}$ | $\text{FN}_{10}$ | $\text{Prec@10}_i$ | $\text{Rec@10}_i$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | `DEV_001` | `AUTONOMA` | 3 | 5 | 10 | 2 | 3 | 1 | 0.4000 | 0.6667 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 2 | `DEV_002` | `AUTONOMA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 3 | `DEV_003` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 4 | `DEV_004A` | `AUTONOMA` | 3 | 5 | 10 | 1 | 4 | 2 | 0.2000 | 0.3333 | 1 | 9 | 2 | 0.1000 | 0.3333 |
| 5 | `DEV_004B` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 6 | `DEV_005` | `AUTONOMA` | 3 | 5 | 10 | 2 | 3 | 1 | 0.4000 | 0.6667 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 7 | `DEV_060` | `AUTONOMA` | 3 | 5 | 10 | 2 | 3 | 1 | 0.4000 | 0.6667 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 8 | `DEV_006` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 9 | `DEV_007` | `DEP_CONTEXTO` | 3 | 5 | 10 | 1 | 4 | 2 | 0.2000 | 0.3333 | 1 | 9 | 2 | 0.1000 | 0.3333 |
| 10 | `DEV_008` | `AMBIGUA` | 2 | 5 | 10 | 1 | 4 | 1 | 0.2000 | 0.5000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 11 | `DEV_009` | `DEP_CONTEXTO` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 12 | `DEV_010` | `PARAMETRIZADA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 13 | `DEV_012` | `AUTONOMA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 14 | `DEV_013` | `AMBIGUA` | 4 | 5 | 10 | 4 | 1 | 0 | 0.8000 | 1.0000 | 4 | 6 | 0 | 0.4000 | 1.0000 |
| 15 | `DEV_014` | `DEP_CONTEXTO` | 3 | 5 | **6** | 2 | 3 | 1 | 0.4000 | 0.6667 | 2 | 4 | 1 | **0.3333** | 0.6667 |
| 16 | `DEV_015` | `AMBIGUA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 17 | `DEV_016` | `AUTONOMA` | 1 | 5 | 10 | 1 | 4 | 0 | 0.2000 | 1.0000 | 1 | 9 | 0 | 0.1000 | 1.0000 |
| 18 | `DEV_017` | `AUTONOMA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 19 | `DEV_021` | `AUTONOMA` | 3 | 5 | 10 | 2 | 3 | 1 | 0.4000 | 0.6667 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 20 | `DEV_023` | `AUTONOMA` | 1 | 5 | 10 | 1 | 4 | 0 | 0.2000 | 1.0000 | 1 | 9 | 0 | 0.1000 | 1.0000 |
| 21 | `DEV_024` | `AUTONOMA` | 1 | 5 | 10 | 1 | 4 | 0 | 0.2000 | 1.0000 | 1 | 9 | 0 | 0.1000 | 1.0000 |
| 22 | `DEV_025` | `PARAMETRIZADA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 23 | `DEV_026` | `AUTONOMA` | 2 | 5 | 10 | 1 | 4 | 1 | 0.2000 | 0.5000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 24 | `DEV_028` | `AUTONOMA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 25 | `DEV_030` | `AUTONOMA` | 1 | 5 | 10 | 1 | 4 | 0 | 0.2000 | 1.0000 | 1 | 9 | 0 | 0.1000 | 1.0000 |
| 26 | `DEV_031` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 27 | `DEV_032` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 28 | `DEV_033` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 29 | `DEV_034` | `DEP_CONTEXTO` | 3 | 5 | **6** | 2 | 3 | 1 | 0.4000 | 0.6667 | 2 | 4 | 1 | **0.3333** | 0.6667 |
| 30 | `DEV_035` | `PARAMETRIZADA` | 4 | 5 | 10 | 2 | 3 | 2 | 0.4000 | 0.5000 | 3 | 7 | 1 | 0.3000 | 0.7500 |
| 31 | `DEV_041` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 32 | `DEV_042` | `AUTONOMA` | 3 | 5 | 10 | 2 | 3 | 1 | 0.4000 | 0.6667 | 2 | 8 | 1 | 0.2000 | 0.6667 |
| 33 | `DEV_043` | `PARAMETRIZADA` | 3 | 5 | 10 | 3 | 2 | 0 | 0.6000 | 1.0000 | 3 | 7 | 0 | 0.3000 | 1.0000 |
| 34 | `DEV_044` | `AUTONOMA` | 2 | 5 | 10 | 2 | 3 | 0 | 0.4000 | 1.0000 | 2 | 8 | 0 | 0.2000 | 1.0000 |
| 35 | `DEV_046` | `AUTONOMA` | 4 | 5 | 10 | 3 | 2 | 1 | 0.6000 | 0.7500 | 4 | 6 | 0 | 0.4000 | 1.0000 |
| 36 | `DEV_047` | `AUTONOMA` | 4 | 5 | 10 | 4 | 1 | 0 | 0.8000 | 1.0000 | 4 | 6 | 0 | 0.4000 | 1.0000 |
| 37 | `DEV_048` | `AUTONOMA` | 4 | 5 | 10 | 4 | 1 | 0 | 0.8000 | 1.0000 | 4 | 6 | 0 | 0.4000 | 1.0000 |
| 38 | `DEV_049` | `AUTONOMA` | 7 | 5 | 10 | 3 | 2 | 4 | 0.6000 | 0.4286 | 6 | 4 | 1 | 0.6000 | 0.8571 |
| 39 | `DEV_050` | `AUTONOMA` | 4 | 5 | 10 | 3 | 2 | 1 | 0.6000 | 0.7500 | 3 | 7 | 1 | 0.3000 | 0.7500 |
| **Total** | **39 casos** | — | **107** | **195** | **382** | **86** | **109** | **21** | **$\Sigma = 17.2000$** | **$\Sigma = 32.7619$** | **97** | **285** | **10** | **$\Sigma = 9.9667$** | **$\Sigma = 36.0238$** |
### 2.2. Fórmulas y conteos reproducibles (Escenario A — 39 casos)
- **Conteos en **$k=10$** (reportados oficialmente por el script):**
  - $\text{TP}_{10} = 97$
  - $\text{FP}_{10} = 285$ (sobre $\sum |P_{i,10}| = 382$ tablas predichas: $37 \text{ casos} \times 10 + 2 \text{ casos} \times 6 = 382$; $382 - 97 = 285$)
  - $\text{FN}_{10} = 10$ ($107 - 97 = 10$)
- **Conteos en **$k=5$**:**
  - $\text{TP}_5 = 86$, $\text{FP}_5 = 109$ (sobre $39 \times 5 = 195$ predichas), $\text{FN}_5 = 21$ ($107 - 86 = 21$)
- **Precision@5:**
  - Macro (oficial): $\dfrac{17.20}{39} = \dfrac{86}{195} = \mathbf{0.441026}$ (**44.10%**)
  - Micro: $\dfrac{86}{86 + 109} = \dfrac{86}{195} = \mathbf{0.441026}$ (**44.10%**) *(Coinciden porque **$|P_{i,5}| = 5$** en los 39 casos).*
- **Precision@10:**
  - Macro (oficial): $\dfrac{9.30 + \frac{2}{6} + \frac{2}{6}}{39} = \dfrac{9.966667}{39} = \dfrac{299}{1170} = \mathbf{0.255556}$ (**25.56%**)
  - Micro: $\dfrac{97}{97 + 285} = \dfrac{97}{382} = \mathbf{0.253927}$ (**25.39%**) *(Difieren en 0.16 pp porque **`DEV_014`** y **`DEV_034`** predicen 6 tablas en vez de 10).*
- **Recall@5:**
  - Macro (oficial): $\dfrac{24 \times 1 + 2 \times \frac{1}{2} + 7 \times \frac{2}{3} + 2 \times \frac{1}{3} + 3 \times \frac{3}{4} + \frac{3}{7}}{39} = \dfrac{32.761905}{39} = \dfrac{1376}{1638} = \mathbf{0.840049}$ (**84.00%**)
  - Micro: $\dfrac{86}{107} = \mathbf{0.803738}$ (**80.37%**)
- **Recall@10:**
  - Macro (oficial): $\dfrac{31 \times 1 + 2 \times \frac{1}{3} + 3 \times \frac{2}{3} + 2 \times \frac{3}{4} + \frac{6}{7}}{39} = \dfrac{36.023810}{39} = \dfrac{1513}{1638} = \mathbf{0.923687}$ (**92.37%**)
  - Micro: $\dfrac{97}{107} = \mathbf{0.906542}$ (**90.65%**)
- **Complete Recovery@5:** $\dfrac{24}{39} = \mathbf{0.615385}$ (**61.54%**)
- **Complete Recovery@10:** $\dfrac{31}{39} = \mathbf{0.794872}$ (**79.49%**)
- **Promedios por caso (**$k=10$**):**
  - Tablas sobrantes por caso: $\dfrac{285}{39} = \mathbf{7.3077}$ (**7.31**)
  - Tablas omitidas por caso: $\dfrac{10}{39} = \mathbf{0.2564}$ (**.26**)
- **Latencia:**
  - Registrada en el artefacto oficial [`prefilter_benchmark_curated_dev39.json`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark_curated_dev39.json#L26-L27): **p50 = 3.17 ms** (`3.1692 ms`), **p95 = 4.90 ms** (`4.9040 ms`).
  - Medida en verificación auxiliar en vivo: **p50 = 3.22 ms**, **p95 = 4.94 ms**.
---
## 3. Recalculación del subconjunto autónomo (Escenario B)
Se evaluaron exclusivamente los **28 casos** clasificados como `AUTONOMA` en la auditoría de autonomía previa, excluyendo los 11 casos no autónomos:
- Excluidos por `DEPENDIENTE_CONTEXTO` (4): `DEV_007`, `DEV_009`, `DEV_014`, `DEV_034`.
- Excluidos por `PARAMETRIZADA` (4): `DEV_010`, `DEV_025`, `DEV_035`, `DEV_043`.
- Excluidos por `AMBIGUA` (3): `DEV_008`, `DEV_013`, `DEV_015`.
### 3.1. Parámetros y conteos del Escenario B (28 casos `AUTONOMA`)
- **Cantidad de casos evaluados (**$N$**):** **28 casos**.
- **Cantidad de casos sin gold:** **0 casos** en este subconjunto (9 casos en `pending_review` en el archivo global).
- **Total de tablas gold (**$\sum |G_i|$**):** **75 tablas**.
- **Total de tablas predichas:**
  - En $k=5$: $\sum |P_{i,5}| = 28 \times 5 = \mathbf{140}$ tablas.
  - En $k=10$: $\sum |P_{i,10}| = 28 \times 10 = \mathbf{280}$ tablas *(los 28 casos autónomos devuelven al menos 10 tablas con **`score > 0`**)*.
### 3.2. Fórmulas y resultados del Escenario B
- **TP, FP y FN:**
  - **En **$k=10$**:** $\text{TP}_{10} = \mathbf{70}$, $\text{FP}_{10} = 280 - 70 = \mathbf{210}$, $\text{FN}_{10} = 75 - 70 = \mathbf{5}$ *(correspondientes a **`DEV_004A`** [2 FN: T84, T85], **`DEV_042`** [1 FN: T74], **`DEV_049`** [1 FN: T23] y **`DEV_050`** [1 FN: T74])*.
  - **En **$k=5$**:** $\text{TP}_5 = \mathbf{61}$, $\text{FP}_5 = 140 - 61 = \mathbf{79}$, $\text{FN}_5 = 75 - 61 = \mathbf{14}$.
- **Precision@5:**
  - Macro (oficial): $\dfrac{12.20}{28} = \dfrac{61}{140} = \mathbf{0.435714}$ (**43.57%**)
  - Micro: $\dfrac{61}{140} = \mathbf{0.435714}$ (**43.57%**)
- **Precision@10:**
  - Macro (oficial): $\dfrac{7.00}{28} = \dfrac{70}{280} = \mathbf{0.250000}$ (**25.00%**)
  - Micro: $\dfrac{70}{280} = \mathbf{0.250000}$ (**25.00%**) *(Coinciden exactamente porque los 28 casos predicen 10 tablas).*
- **Recall@5:**
  - Macro (oficial): $\dfrac{18 \times 1 + \frac{1}{3} + 5 \times \frac{2}{3} + \frac{1}{2} + 2 \times \frac{3}{4} + \frac{3}{7}}{28} = \dfrac{24.095238}{28} = \dfrac{506}{588} = \mathbf{0.860544}$ (**86.05%**)
  - Micro: $\dfrac{61}{75} = \mathbf{0.813333}$ (**81.33%**)
- **Recall@10:**
  - Macro (oficial): $\dfrac{24 \times 1 + \frac{1}{3} + \frac{2}{3} + \frac{6}{7} + \frac{3}{4}}{28} = \dfrac{26.607143}{28} = \dfrac{745}{784} = \mathbf{0.950255}$ (**95.03%**)
  - Micro: $\dfrac{70}{75} = \mathbf{0.933333}$ (**93.33%**)
- **Complete Recovery@5:** $\dfrac{18}{28} = \mathbf{0.642857}$ (**64.29%**)
- **Complete Recovery@10:** $\dfrac{24}{28} = \mathbf{0.857143}$ (**85.71%**)
- **Promedios por caso (**$k=10$**):**
  - Tablas sobrantes por caso: $\dfrac{210}{28} = \mathbf{7.50}$
  - Tablas omitidas por caso: $\dfrac{5}{28} = \mathbf{0.1786}$ (**.18**)
- **Latencia:**
  - No existe un artefacto JSON pregenerado exclusivo para los 28 casos; en la medición directa sobre los 28 casos se obtuvo **p50 = 3.32 ms** y **p95 = 4.85 ms**.
---
## 4. Reconciliación de discrepancias y línea base válida
### 4.1. Contrastación con `prefilter_benchmark_curated_dev39.md` y `.json`
Los resultados recalculados en la Sección 2 para el Escenario A (39 casos) coinciden de forma **exacta, dígito por dígito**, con los archivos actuales del proyecto:
- [`backend/evaluation/reports/prefilter_benchmark_curated_dev39.json`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark_curated_dev39.json#L8-L28)
- [`backend/evaluation/reports/prefilter_benchmark_curated_dev39.md`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark_curated_dev39.md#L9-L23)
### 4.2. Explicación probada de las tres ternas de cifras
| Cifras consultadas | ¿Existen en código/datos? | Explicación demostrada con evidencia |
| --- | --- | --- |
| **1) **`**TP=97, FP=285 y Precision@10=25.56%**` | **SÍ (Valores reales actuales)** | Corresponden a la ejecución real de [`run_prefilter_benchmark_curated.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py) sobre los **39 casos **`**dev**`** actuales** (tras corregir `DEV_003`, `DEV_033`, `DEV_041` y `DEV_047`).<br>• $\text{TP}_{10} = 97$, $\text{FP}_{10} = 285$ (total predichas = $382$).<br>• $\text{Precision@10}_{\text{macro}} = \frac{1}{39}\sum_{i=1}^{39}\text{Precision@10}_i$ |
| **2) **`**TP=97, FP=85 y Precision@10=5.56%**` | **NO (Truncamiento del primer dígito **`**2**`**)** | No corresponden a ninguna definición alternativa de métrica, ni a micro-promedio, ni a otra corrida.<br>• Obsérvese que `85` es `285` **sin el dígito inicial **`**2**`, y `5.56%` es `25.56%` **sin el dígito inicial **`**2**`.<br>• Matemáticamente es imposible que con $\text{TP}=97$ y $\text{FP}=85$ la precisión sea $5.56\%$: si $\text{TP}=97$ y $\text{FP}=85$, la precisión sería $\frac{97}{97+85} = 53.30\%$. A la inversa, para que $\text{TP}=97$ diera una precisión de $5.56\%$, se requerirían $1\,745$ tablas predichas ($\text{FP}=1\,648$), lo cual es imposible con 39 casos y `top_k=10` (máximo $390$ predichas).<br>• Queda demostrado que es un **error tipográfico/de transcripción por pérdida del carácter inicial **`**2**` en ambos números (`285` $\rightarrow$ `85` y `25.56%` $\rightarrow$ `5.56%`). |
| **3) **`**TP=94, FP=88 y Precision@10=4.79%**` | **NO (Truncamiento del primer dígito **`**2**`** sobre la corrida previa)** | Los valores reales de la corrida previa a la corrección de los 4 gold (39 casos `dev`, ejecutada el `2026-11-04 13:09:01 UTC`, preservada en el log de ejecución Paso 619/625) fueron:<br>• $\text{TP}_{10} = \mathbf{94}$<br>• $\text{FP}_{10} = \mathbf{288}$ (total predichas = $382$; $382 - 94 = 288$)<br>• $\text{Precision@10}_{\text{macro}} = \frac{9.666667}{39} = 0.247863 \rightarrow \mathbf{24.79\%}$.<br>• Nuevamente, `88` es `288` **sin el dígito inicial **`**2**`, y `4.79%` es `24.79%` **sin el dígito inicial **`**2**`. Con $\text{TP}=94$ y $\text{FP}=88$ la precisión sería $\frac{94}{182} = 51.65\%$, no $4.79\%$. Se trata del mismo **error de truncamiento del primer dígito **`**2**` al transcribir `288` y `24.79%`. |
> [!WARNING]
> **Segunda discrepancia histórica documentada en informes previos:** En el informe de la cuarta auditoría (Paso 779 del historial de sesión), la columna «Línea base previa» reportó erróneamente `Recall@5 = 78.42%`, `TP = 92` y `FP = 283` debido a un cálculo mental inverso equivocado sobre los deltas, cuando los valores reales medidos en la corrida previa (Paso 619/625) eran `Recall@5 = 79.52%`, `TP = 94`, `FP = 288`, `FN = 15` y `Precision@10 = 24.79%`.
### 4.3. Línea base válida actual y comparabilidad con la corrida anterior
1. **Línea base válida actual (Dataset completo de 39 casos **`**dev**`**):**
Es la registrada en [`prefilter_benchmark_curated_dev39.json`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark_curated_dev39.json) y verificada en el Escenario A:
  - **Casos:** 39 | **Recall@5:** `84.00%` (`.8400`) | **Recall@10:** `92.37%` (`.9237`) | **Precision@5:** `44.10%` (`.4410`) | **Precision@10:** `25.56%` (`.2556`) | **Complete Recovery@5:** `61.54%` (24/39) | **Complete Recovery@10:** `79.49%` (31/39) | **TP:** `97` | **FP:** `285` | **FN:** `10`.
1. **¿Existe evidencia suficiente para comparar con la corrida anterior a la corrección de los 4 **`**gold_tables**`**?**
  - **Sí.** Aunque [`run_prefilter_benchmark_curated.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark_curated.py#L199-L214) sobrescribió el archivo `prefilter_benchmark_curated_dev39.json` en disco, existe **doble evidencia verificable**:
    1. El log del sistema de la ejecución original (Paso 619 y Paso 625 de la transcripción) conserva la salida literal del JSON generado a las `2026-11-04 13:09:01 UTC`.
    1. El estado exacto del dataset antes de corregir los 4 `gold_tables` está versionado en Git en el commit `5d627dfaa45539add4782cf86c18119805cbb231` (donde `DEV_003`, `DEV_033`, `DEV_041` y `DEV_047` tenían sus `gold_tables` previos y el código de `SchemaPrefilter` era idéntico), permitiendo reproducir determinísticamente todas las métricas de recuperación (`Recall@5: 79.52%`, `Recall@10: 87.88%`, `Precision@5: 42.56%`, `Precision@10: 24.79%`, `Complete Recovery@5: 51.28% [20/39]`, `Complete Recovery@10: 69.23% [27/39]`, `TP: 94`, `FP: 288`, `FN: 15`).
---
## 5. Decisión recomendada para `DEV_009`
### 5.1. Análisis del caso y su contexto de origen
- **Estado actual en [**`**dataset.json**`**](file:///mnt/m2-dev/PROIES/backend/evaluation/dataset.json#L73-L78):**
  {
  "id": "DEV_009",
  "split": "dev",
  "difficulty": "meeting",
  "question": "A que areas temáticas se dedica la organizacion.",
  "gold_tables": ["T1", "T23", "T24"]
}
- **Contexto de origen comprobado en el historial de Git (**`**commit ff75d53**`** y **`**commit 5d627df**`**):**
  1. Los casos con `"difficulty": "meeting"` (`DEV_001` a `DEV_015` y `DEV_060`) provienen del relevamiento inicial de preguntas de negocio obtenidas en reuniones de diseño, redactadas originalmente como notas breves en singular o con sujeto implícito (p. ej., `DEV_002` era *«¿Cuáles son los proyectos que tiene?»*, `DEV_004` era *«A que poblacion está destinada»*, `DEV_005` era *«Tiene aportes privados?»*).
  1. En el commit `5d627dfaa45539add4782cf86c18119805cbb231` (*«corrección del dataset para el prefilter»*), las preguntas `DEV_001` a `DEV_006` fueron normalizadas a preguntas autónomas explícitas sobre **las organizaciones relevadas** (ej. `DEV_002`: *«¿Qué proyectos tienen actualmente las organizaciones relevadas?»*), mientras que a partir de `DEV_007` quedaron con su redacción cruda de nota de reunión.
  1. Se verificó en [`context_resolver_cases.json`](file:///mnt/m2-dev/PROIES/backend/evaluation/context_resolver_cases.json) que `DEV_009` **no forma parte de ninguna secuencia conversacional ni tiene turno antecedente asociado**.
  1. Además, en el dataset existe `DEV_043` (*«¿Cuáles son las organizaciones que trabajan sobre {áreas temáticas}?»*, consulta inversa filtrada por un área específica), pero **no existe ningún otro caso autónomo que consulte el listado general de áreas temáticas a las que se dedican las organizaciones**. Si `DEV_009` se trasladara al benchmark conversacional, el benchmark independiente de `SchemaPrefilter` perdería la cobertura de la consulta directa sobre áreas temáticas (`T1` + `T23` + `T24`) sin parámetro.
### 5.2. Recomendación única
**Decisión recomendada:** **Reformular **`**DEV_009**`** para que sea autónomo y mantenerlo en el benchmark independiente de **`**SchemaPrefilter**`**.**
- **Pregunta reformulada propuesta (completa y sin ambigüedad):**
  > `¿A qué áreas temáticas se dedican las organizaciones relevadas?`
- **Justificación:**
  1. **Coherencia con la curación previa del bloque **`**meeting**`**:** Sigue exactamente el mismo patrón aplicado en `DEV_002`, `DEV_003`, `DEV_004A`, `DEV_006` y `DEV_060`, donde el singular informal de nota de reunión (*«la organización»*) fue estandarizado al sujeto explícito del dominio (*«las organizaciones relevadas»*).
  1. **Alineación exacta con **`**gold_tables**`** (**`**["T1", "T23", "T24"]**`**):** Para listar a qué áreas temáticas se dedican las organizaciones relevadas se requiere unir la entidad organización (`T1`: `organizacion`), la tabla intermedia con prioridad (`T24`: `area_tematica_por_organizacion`) y el catálogo de nombres de áreas (`T23`: `area_tematica`).
  1. **Inexistencia de historial conversacional real:** A diferencia de `DEV_034` (*«del mismo»*), que evalúa un fenómeno anafórico genuino ya cubierto en `ContextResolver`, el singular en `DEV_009` es un artefacto de redacción de las notas de relevamiento y no un caso diseñado para probar correferencia.
---
## 6. Limitaciones de la auditoría y datos que no pudieron recuperarse
1. **Resultados individuales por caso y latencias de la línea base histórica de 41 casos:**
  - El reporte histórico [`backend/evaluation/reports/prefilter_benchmark.md`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark.md) fue generado con [`run_prefilter_benchmark.py`](file:///mnt/m2-dev/PROIES/backend/evaluation/run_prefilter_benchmark.py), el cual únicamente escribía en el resumen Markdown el conteo de casos (`41`), `Recall@5` (`.7198`), `Recall@10` (`.7831`) y la tabla de `Gold no recuperadas` para los 21 casos con `Recall@10 < 1.0`.
  - Ese script no generaba archivo `.json`, no registraba la lista completa de `predicted_tables` por caso (necesaria para verificar cuántos casos devolvieron menos de 10 tablas) ni medía tiempos de ejecución individuales (`latencia_p50_ms` / `latencia_p95_ms`). Por lo tanto, **no es posible recuperar desde artefactos persistidos las latencias por caso de la corrida histórica de 41 casos**.
1. **Sobrescritura del archivo JSON de la corrida de 39 casos previa a la corrección de los 4 gold (**`**2026-11-04 13:09:01 UTC**`**):**
  - El archivo [`prefilter_benchmark_curated_dev39.json`](file:///mnt/m2-dev/PROIES/backend/evaluation/reports/prefilter_benchmark_curated_dev39.json) no fue comiteado en Git antes de ser sobrescrito por la corrida de las `19:33:39 UTC` (ambas corridas se comitearon juntas en `54c2868`).
  - Si bien las métricas agregadas exactas (`Recall@5: 0.795177`, `Recall@10: 0.878816`, `Precision@5: 0.425641`, `Precision@10: 0.247863`, `TP: 94`, `FP: 288`, `FN: 15`, `p50: 3.2002 ms`, `p95: 4.9196 ms`) quedaron íntegramente preservadas en el registro de ejecución del Paso 625 y las métricas determinísticas de recuperación son 100% reproducibles desde el commit `5d627df`, **el vector de 39 mediciones individuales de latencia en milisegundos de aquella corrida específica no se guardaba por caso en el JSON** (el esquema de `prefilter_benchmark_curated_dev39.json` solo serializa `metadatos`, `metricas` agregadas y `diagnosticos` de casos con `Recall@10 < 1.0`, sin el arreglo completo de `predicted_tables` ni `latencia_ms` de los casos con `Recall@10 == 1.0`).