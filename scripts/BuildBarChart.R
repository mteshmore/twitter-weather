# buildtimeline.R (ESHA)
# For tweets: bar chart of tweets over time (answers: when do people tweet the most?)
# For weather: line graph of temperature (scale so it will sit on same graph as tweets)
# If both are checked, render them on top of one another
# Add correlation

library(plotly)
library(ggplot2)
library(dplyr)

build.bar.chart <- function(data, x.var, y.var, x.label, y.label, title) {
  p <- plot_ly(data = data,
    x = x.var,
    y = y.var,
    name = title,
    type = "bar"
  )
    # layout(
    #   yaxis = list(range = c(0, 100))
    # )
  return(p)
}
