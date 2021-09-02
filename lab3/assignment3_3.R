#3. Simulate a simple dataset of 10 points.Create a heat map to visualize relationships between
#the variables. A heat map is a graphical representation of data where the data values are
#represented as colours.

#Our data contains ten columns and ten rows with normally distributed random values.
set.seed(123)                                                     # Set seed for reproducibility
data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)           # Create example data
colnames(data) <- paste0("col", 1:10)                             # Column names
rownames(data) <- paste0("row", 1:10)                             # Row names

#Create Heatmap with plot_ly Function [plotly Package]
install.packages("plotly")                                       
library("plotly")

plot_ly(z = data, type = "heatmap") 
