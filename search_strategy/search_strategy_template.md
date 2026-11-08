# 文献检索策略记录表 (Search Strategy Record)

- **检索时间**: YYYY-MM-DD
- **研究题目**: 
- **主要检索者**: 

---

## 1. 数据库检索概览

| 数据库 / 检索源 | 检索日期 | 检索范围/字段 | 检索结果数 (篇) | 导出文件名 (放置于 data/01_raw/) |
| :--- | :--- | :--- | :--- | :--- |
| **PubMed / MEDLINE** | YYYY-MM-DD | Title/Abstract, MeSH | 0 | `pubmed_raw_YYYYMMDD.nbib` |
| **Embase** | YYYY-MM-DD | Title, Abstract, Emtree | 0 | `embase_raw_YYYYMMDD.ris` |
| **Cochrane Library (CENTRAL)** | YYYY-MM-DD | Title, Abstract, Keyword | 0 | `cochrane_raw_YYYYMMDD.ris` |
| **Web of Science (Core Collection)** | YYYY-MM-DD | Topic (TS) | 0 | `wos_raw_YYYYMMDD.ris` |
| **ClinicalTrials.gov** | YYYY-MM-DD | Condition/Intervention | 0 | `clinicaltrials_YYYYMMDD.csv` |
| **手动检索 / 滚雪球** | YYYY-MM-DD | 参考文献溯源 | 0 | `handsearch_YYYYMMDD.ris` |
| **总检索记录数** | - | - | **0** | - |
| **去重后记录数** | - | - | **0** | `data/02_screening/deduplicated.ris` |

---

## 2. 具体检索式记录

### 2.1 PubMed
```text
# 示例：
#1 ("Myocardial Infarction"[Mesh] OR "heart attack"[tiab])
#2 ("Aspirin"[Mesh] OR "acetylsalicylic acid"[tiab])
#3 ("Randomized Controlled Trial"[pt] OR "randomized"[tiab] OR "placebo"[tiab])
#4 #1 AND #2 AND #3
```

### 2.2 Embase
```text
# 记录 Embase 检索式及检索限制 (Emtree + Free text)
```

### 2.3 Cochrane CENTRAL
```text
# 记录 Cochrane 检索式及 limits
```

### 2.4 Web of Science
```text
# 记录 Web of Science 主题检索式 (TS=...)
```
