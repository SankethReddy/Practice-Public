library(ggplot2)
install.packages("plotly")
library(plotly)

df_houston_groupby_month_season_count <- read.csv('Houston Groupby Month Season Count.csv')
x <- list(
  title = "Month"
)
y <- list(
  title = "Accident Count"
)
fig <- plot_ly(data = df_houston_groupby_month_season_count, x = ~Month, y = ~ID, 
               mode = "lines+markers", type = "scatter")
fig <- fig %>% layout(title = "Count of Accidents Occuring in Houston, TX Over Time", xaxis = x, yaxis = y)
fig

g <- ggplot(data = df_houston_groupby_month_season_count, aes(x = Month, y = ID, group = 1))
g +
  geom_point(aes(color = Season), size = 4) +
  geom_line() + 
  ylab("Accident Count") +
  xlab("Month") +
  ggtitle("Accidents Occuring in Houston, TX Over Time") +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  scale_x_discrete(breaks=c('2016-06','2017-02','2017-10','2018-06', '2019-02', '2019-10'))
