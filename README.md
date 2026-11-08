# Meta-Analysis Project

本项目遵循 **PRISMA 2020** 规范及可重复性科研标准构建，用于系统评价与荟萃分析（Systematic Review and Meta-Analysis）的全流程管理与自动化分析。

---

## 📁 目录结构与职能说明

```text
.
├── protocol/                     # 研究方案与注册文件（PRISMA-P、PROSPERO 注册草稿等）
├── search_strategy/              # 数据库检索式与记录（PubMed、Embase、Cochrane、Web of Science 等）
├── data/                         # 数据管理目录（按研究阶段分层存放）
│   ├── 01_raw/                   # 原始导出文献库（.ris, .bib, .nbib，严格只读）
│   ├── 02_screening/             # 筛选与去重记录（初筛/复筛记录、剔除原因表、PRISMA 流程计数）
│   ├── 03_extraction/            # 提取表（研究特征表、人群基线、连续/二分类结局提取）
│   ├── 04_quality_assessment/    # 偏倚风险评估（Cochrane RoB 2, ROBINS-I, NOS, QUADAS-2 等）
│   └── 05_processed/             # 预处理清洗后的标准化建模分析数据
├── scripts/                      # 统计分析与绘图代码（建议按执行次序编号）
│   ├── 00_setup.R                # 环境依赖安装与初始化
│   ├── 01_data_cleaning.R        # 数据预处理与合并检验
│   ├── 02_main_meta.R            # 主效应合并与森林图绘制 (Forest Plot)
│   ├── 03_subgroup_analysis.R    # 亚组分析与元回归 (Subgroup & Meta-regression)
│   ├── 04_sensitivity_analysis.R # 敏感性分析（如逐一剔除法 Leave-one-out）
│   └── 05_publication_bias.R     # 发表偏倚检验（漏斗图 Funnel Plot、Egger/Begg 检验、剪补法）
├── results/                      # 分析与统计输出产物
│   ├── figures/                  # 高清图表导出（森林图、漏斗图、偏倚汇总图、PRISMA 流程图）
│   ├── tables/                   # 表格导出（Table 1 研究特征表、效应量汇总表）
│   └── reports/                  # 阶段性报告或自动化报告（Quarto / R Markdown）
├── manuscript/                   # 论文撰写与投稿材料（PRISMA Checklist、手稿初稿、补充材料）
├── .gitignore                    # Git 忽略配置
└── README.md                     # 本说明文档
```

---

## 🔄 Meta 分析工作流指引

1. **方案制定 (Protocol)**:
   - 在 `protocol/` 中起草研究方案并完成 PROSPERO 等平台注册。
2. **检索文献 (Search)**:
   - 在 `search_strategy/` 记录各数据库检索日期与检索式；原始导出文件存入 `data/01_raw/`。
3. **筛选文献 (Screening)**:
   - 文献去重并使用 EndNote / Rayyan / Covidence 进行双人背对背初筛（标题/摘要）与复筛（全文）。结果记录于 `data/02_screening/`。
4. **数据提取与质评 (Extraction & Quality Assessment)**:
   - 提取研究基线与结局指标到 `data/03_extraction/`。
   - 使用相应评估工具（RoB 2 / ROBINS-I / NOS）在 `data/04_quality_assessment/` 完成质量评估。
5. **数据预处理与分析 (Analysis)**:
   - 运行 `scripts/01_data_cleaning.R` 生成 `data/05_processed/` 中的分析数据集。
   - 按序执行 `02` ~ `05` 脚本生成主效应、亚组、敏感性与发表偏倚分析。
6. **图表导出与报告 (Results & Manuscript)**:
   - 高清图表（300/600 DPI）自动存至 `results/figures/`，表格存至 `results/tables/`。
   - 配合 `manuscript/` 中的 PRISMA 2020 Checklist 完成最终文章撰写。
