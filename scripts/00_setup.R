# ==============================================================================
# 00_setup.R: Meta-Analysis 环境配置与依赖包安装
# ==============================================================================

# 所需的核心 R 包列表
required_packages <- c(
  # 1. 核心 Meta 分析包
  "meta",          # 经典通用 Meta 分析包
  "metafor",       # 进阶元回归与复杂模型 (rma, rma.mv)
  "dmetar",        # Guide to Meta-Analysis in R 辅助包 (如安装需 remotes)
  "netmeta",       # 网状 Meta 分析 (如适用)
  
  # 2. 偏倚风险与图表可视化
  "robvis",        # Cochrane 偏倚风险可视化 (Traffic light / Summary plot)
  "ggplot2",       # 高级绘图
  "forestplot",    # 自定义高级森林图绘制
  "cowplot",       # 多图拼接排版
  
  # 3. 数据读写与整理
  "tidyverse",     # 包含 dplyr, tidyr, purrr, stringr 等
  "readxl",        # 读取 Excel 提取表
  "writexl"        # 导出结果为 Excel
)

# 自动检查并安装未安装的 CRAN 包
install_if_missing <- function(packages) {
  missing_pkgs <- packages[!packages %in% installed.packages()[, "Package"]]
  if (length(missing_pkgs) > 0) {
    message("正在安装缺失的依赖包: ", paste(missing_pkgs, collapse = ", "))
    install.packages(missing_pkgs, dependencies = TRUE)
  } else {
    message("所有基础依赖包已安装完成。")
  }
}

# 仅检查常规 CRAN 包（dmetar、robvis 可能需从 GitHub 或 CRAN 安装）
cran_packages <- c("meta", "metafor", "ggplot2", "readxl", "writexl", "tidyverse")
install_if_missing(cran_packages)

message("环境初始化就绪！可以开始进行 Meta 分析。")
