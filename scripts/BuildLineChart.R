# buildtimeline.R (ESHA)
# For tweets: bar chart of tweets over time (answers: when do people tweet the most?)
# For weather: line graph of temperature (scale so it will sit on same graph as tweets)
# If both are checked, render them on top of one another
# Add correlation

library(plotly)
library(ggplot2)
library(dplyr)

build.line.chart <- function(data, x.var, y.var, x.label, y.label, title){
  p <- plot_ly(data = data,
               x = x.var,
               y = y.var,
               marker = list(size = 10,
                             color = 'rgba(255, 182, 193, .9)',
                             line = list(color = 'rgba(152, 0, 0, .8)',
                                         width = 2))) %>%
    layout(title = title,
           yaxis = list(zeroline = FALSE),
           xaxis = list(zeroline = FALSE)) #change axis titles
  return(p)
}