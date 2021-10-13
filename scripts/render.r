
print(.libPaths('D:/R-4.1.1/library')) #Quitar, sólo dev
print(.libPaths())
args <- commandArgs(trailingOnly = TRUE)
print(args)
rmarkdown::render('./scripts/test.Rmd', output_file = "./analysis/"+args+"/result.html", params=list(session = args))
