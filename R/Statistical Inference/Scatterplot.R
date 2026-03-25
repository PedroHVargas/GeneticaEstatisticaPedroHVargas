#importing dataset
dataset = read.csv("https://raw.githubusercontent.com/mauricioaraujj/Pan_African_Trials_Network/refs/heads/main/data/data.csv",sep = ';')
dim(dataset)
#subseting
data_benin = subset(dataset, env == "E057")
#exploring
dim(data_benin)
head(data_benin)
#viewing if the type of the variables of interest is correct
str(data_benin[c("GY","NDM" ,"PH_R8")])
#checking for viewing if there is missing data
table(data_benin$rep, data_benin$gen)
#calculating correlation
cor(data_benin[c("GY", "NDM", "PH_R8")])
#generating the plot
library(ggplot2)
  pairs(data_benin[c("GY","NDM" ,"PH_R8")], 
  main = "Pairwise Scatterplot",
  pch = 19,
  labels = c("Grain Yield (g)", "Number of days for maturity", "Plant Height in R8 (cm)") 
  )