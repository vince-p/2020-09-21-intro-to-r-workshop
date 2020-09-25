# Visualising data with ggplot

# load ggplot

library(ggplot2)
library(tidyverse)

# load data

surveys_complete <- read_csv("data_raw/surveys_complete.csv")

# empty plot
ggplot(data = surveys_complete) 

# empty plot with axes
ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

# data appears on the plot
ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length)) +
  geom_point()

# assign a plot to an object

surveys_plot <- ggplot(data=surveys_complete, mapping = aes(x=weight, y=hindfoot_length))

# display the ggplot object
surveys_plot +
  geom_point()


#Challenge 1
#Change the mappings so weight is on the y-axis and hindfoot_length is on the x-axis
ggplot(data=surveys_complete, mapping = aes(x=hindfoot_length, y=weight)) +
  geom_point()

#or another way
surveys_plot + 
  geom_point(aes(x = hindfoot_length, y = weight))


#Challenge 2
#How would you create a histogram of weights?
ggplot(data=surveys_complete, mapping = aes(x=weight)) + geom_histogram(binwidth=10)
  
