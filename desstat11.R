#desstat11.R
library(data.table)# Convert stulevel to data table
specielevel <- data.table(iris)
# Declare which variable you want to group on (optional).
# List the name of the data table first, then the name of the field(s).
setkey(specielevel, Species)
# Average ability by grade
specielevel_agg_2 <- as.data.frame(specielevel[, mean(Sepal.Length, na.rm = TRUE),by = Species])
# Show results
specielevel_agg_2

