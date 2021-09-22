# Set the path to the library with the correct packages
print(.libPaths('D:/R-4.1.1/library'))

# install.packages("tidyverse")
# install.packages("htmlwidgets")
# install.packages("plotly")
# install.packages("ggplot2")
# install.packages("png")

library(tidyverse)
library(ggplot2)
library(plotly)
library(htmlwidgets)
library(png)

types <- c("MESSAGES", "RIGHTS", "DELETIONS", "INPUTS", "WRONGS");

# Reading user data CSV
data <- read.csv(file = './scripts/dataset.csv', stringsAsFactors = FALSE)

# Example sorting data by user ID code -> chanfe decreasing to check results
dataFinal <- data[order(data[, "CODE"]), , drop = FALSE]
df <- data.frame(dataFinal)
write.csv(df, file = './tmp/result.csv')

for (type in types){
        messages <- df %>%
                select(matches(paste(type,'[1-9].[1-9]$',sep='')))

        exercise <- ''
        for (i in seq_along(messages)) {
                exerciseName <- gsub("\\.","-",names(messages)[i])
                print(paste(exerciseName, messages[i]))
                exercise <-c(df[names(messages)[i]])
                value <- unlist(exercise[1], use.names=FALSE)
                file <- paste(exerciseName,".png", sep="")
                
                ggplot(data=df, aes(x=as.factor(df$CODE), y=value)) +
                geom_bar(stat="identity")
                ggsave(paste("./scripts/plots/analysis_",file, sep=""))
        }
}

print("FINISHED")