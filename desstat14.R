#desstat14.R
library(data.table)# Convert stulevel to data table
specielevel <- data.table(iris)
# Declare which variable you want to group on (optional).
# List the name of the data table first, then the name of the field(s).
setkey(specielevel, Species)
# Average ability by grade
specielevel_agg <- as.data.frame(specielevel
 [,j=list(mean_SL=mean(Sepal.Length, na.rm = TRUE),sd_SL=round(sd(Sepal.Length, na.rm = TRUE),3),
  mean_SW=mean(Sepal.Width, na.rm = TRUE),sd_SW=round(sd(Sepal.Width, na.rm = TRUE),3),
  mean_PL=mean(Petal.Length, na.rm = TRUE),sd_PL=round(sd(Petal.Length, na.rm = TRUE),3),
  mean_PW=mean(Petal.Width, na.rm = TRUE),sd_PW=round(sd(Petal.Width, na.rm = TRUE),3)),
  by = Species])
# Show results
specielevel_agg