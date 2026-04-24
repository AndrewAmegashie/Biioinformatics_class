
install.packages("BiocManager")

install.packages("agricolae")

install.packages("rMVP")

install.packages("statgenGWAS")

install.packages("gaston")

install.packages("SNPassoc")

library(agricolae)
data(soil)
set.seed(1234)
# example 1
analysis<-correlation(soil[,2:8],method="pearson")
analysis
# Example 2: correlation between pH, variable 2 and other elements from soil.
analysis<-with(soil,correlation(pH,soil[,3:8],method="pearson",alternative="less"))
analysis
# Example 3: correlation between pH and clay method kendall.
with(soil,correlation(pH,clay,method="kendall", alternative="two.sided"))








