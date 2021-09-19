# Reading user data CSV
data <- read.csv(file = './tmp/data.csv', stringsAsFactors = FALSE)

# Example sorting data by user ID code -> chanfe decreasing to check results
dataFinal <- data[order(data[, "CODE"]), , drop = FALSE, decreasing = FALSE]

# Writing user data in final CSV
write.csv(dataFinal, file = './tmp/dataAfter.csv')

print("Finished running R script")