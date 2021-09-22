data <- read.csv(file = './scripts/dataset.csv', stringsAsFactors = FALSE)
# # Example sorting data by user ID code -> chanfe decreasing to check results
dataFinal <- data[order(data[, "CODE"]), , drop = FALSE]
df <- data.frame(dataFinal)
write.csv(df, file = './tmp/result.csv')
print("FINISHED")