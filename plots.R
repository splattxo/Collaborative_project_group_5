### This is code to produce a scatter plot on the `mtcars` (motortrends) dataset

# load required packages
library(dplyr)
library(ggplot2)

# load in data set
data(mtcars)

# create a scatterplot
mtcars %>% 
    mutate(cyl = as.factor(cyl)) %>%
    ggplot(aes(x = hp, y = mpg, color = cyl, shape = cyl)) + 
    geom_point() + 
    scale_color_brewer(palette = "Set2")  +
    xlab("Horsepower") + 
    ylab("Miles Per Gallon") +
    labs(color = "Cylinders", shape = "Cylinders") +
    theme_minimal() + 
    ggtitle("Motor Trends Data Visualization") 
