library(dplyr)
behave <- data.table::fread("Behavioral Health Services.csv", header = T, sep=",")

behave$SVC_START_DT <- as.Date(behave$SVC_START_DT)
behave$SVC_END_DT <- as.Date(behave$SVC_END_DT)
behave <- mutate(behave, duration = SVC_END_DT - SVC_START_DT )
