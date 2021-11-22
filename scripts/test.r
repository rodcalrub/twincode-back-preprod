args <- commandArgs(trailingOnly = TRUE)
path <- paste(getwd(),'/scripts/analysis/',args,'/dataset.csv',sep="")
data <- read.csv(file = path , stringsAsFactors = FALSE)
# # Example sorting data by user ID code -> change decreasing to check results = TRUE
dataFinal <- data[order(data[, "CODE"], decreasing=FALSE), , drop = FALSE]
df <- data.frame(dataFinal)
file <- paste('./scripts/analysis/',args,'/','result.csv',sep="")
write.csv(df, file = file)
print("FINISHED")