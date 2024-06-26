install.packages("readr")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
# Replace 'your_data.csv' with your actual file path
stock_data <- read.csv(file.choose("D:\\ibm dataset.csv"))
names(stock_data)
ggplot(stock_data, aes(date, close,group =TRUE)) +  
  geom_line(color = "blue") +  
linearmodel=lm(close~date, data = stock_data)
# View model summary
summary(linearmodel)
# Replace 'specific_date' with the desired data
specific_date <- as.Date("2024-06-22")  # Example specific date
# Create a data frame with the specific date
new_data <- data.frame(Date = specific_date)
# Predict using the model
predicted_price <- predict(linearmodel, newdata = stock_data)
# Print the predicted 
print(predicted_price)
           