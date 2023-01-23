
# import dataset
library(readxl)
PEAAQ_results <- read_excel("~/switchdrive/Boris/Recherche/Ambizione/Expe/2022/scale_need_for_effort/Results/Questionnaire_1/PEAAQ_results_nine.xlsx")

# count number of "very relevant"
PEAAQ_results$item1_app_relevance <- as.numeric(as.character(PEAAQ_results$item1_app_relevance))
PEAAQ_results$item1_app_CVI  <- length(which(PEAAQ_results$item1_app_relevance==3))

# do a loop here to avoid repate the procedure for each item

PEAAQ_results$item1_