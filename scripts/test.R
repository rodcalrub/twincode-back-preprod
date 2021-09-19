#We get all CSV files from the tmp directory
theFiles <- list.files("./tmp/",pattern="data.csv",full.names = TRUE)
# theFiles

dataList <- lapply(theFiles,read.csv,stringsAsFactors=FALSE)
# dataList
head(dataList[[1]])
# list.files(path = "./tmp/", full.names = TRUE)



