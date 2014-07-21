# rm(list=ls(all=TRUE))

loadData <- function(location='/home/wijnand/R_workspace_fire/resources/train.csv')
{
        require(data.table)
        data <- fread(location, sep = ",", na.strings = c("NA", "Z"), header = T)
        data$var7 <- as.numeric(data$var7)
        data$var8 <- as.numeric(data$var8)
        
        data$var1 <- as.factor(data$var1)
        data$var2 <- as.factor(data$var2)
        data$var3 <- as.factor(data$var3)
        data$var4 <- as.factor(data$var4)
        data$var5 <- as.factor(data$var5)
        data$var6 <- as.factor(data$var6)
        
        data$var9 <- as.factor(data$var9)
        
        data$dummy <- as.factor(data$dummy)
        
        
        data
}