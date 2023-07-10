row=600
col=15
dataset <- matrix(runif(row*col ,min = -100,max = 100),ncol = 15)
dataset

# Convert the matrix to a data frame
df <- as.data.frame(dataset)

# Set column names
colnames(df) <- paste0("Column", 1:15)

# (i) Plot scatter graph between Column 5 and Column 6
plot(df$Column5, df$Column6, xlab = "Column 5", ylab = "Column 6", main = "Scatter Plot")


# Set the layout for the subplots
par(mfrow = c(3, 5))

#(ii) Plot histograms for each column
for (col in colnames(df)) {
  hist(df[[col]], main = col, xlab = "Value", col = "lightblue")
}
# (iii) Plot the Box plot of each column in a single graph
par(mfrow = c(2, 2))  # Reset the layout for the subplots

boxplot(df, col = "lightblue", main = "Box Plot of Each Column")
