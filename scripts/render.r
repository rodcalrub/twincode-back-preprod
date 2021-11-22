# Get session name parameter
args <- commandArgs(trailingOnly = TRUE)
# Set path result
path <- paste("./analysis/",args,"/result.html",sep="")
# Set path to access R Markdown file
pathRmd <- paste(getwd(),'/scripts/test.Rmd',sep="")
# Run R Markdown document
rmarkdown::render(pathRmd, output_file = path, params=list(session = args))