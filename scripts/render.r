
# print(.libPaths('D:/R-4.1.1/library')) #Quitar, sólo dev
print(.libPaths())
#Have to modify the method inside the node module to receive two parameters instead of one -> executeScript
args <- commandArgs(trailingOnly = TRUE)
path <- paste("./analysis/",args,"/result.html",sep="")
rmarkdown::render('./scripts/test.Rmd', output_file = path, params=list(session = args))
