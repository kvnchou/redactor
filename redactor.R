data <- read.csv('poverty_mentalhealth_suicide.csv')
library(ggplot2)

oneyear <- subset(data, data$year == c('2016'))

a <-
  ggplot(data = oneyear, aes(x = PovertyPercentage, y = SuicideMean))
a + geom_smooth(
  method = lm,
  aes(x = PovertyPercentage, y = SuicideMean),
  fill = rgb(255, 153, 187, maxColorValue = 255, alpha = 255),
  size = 200,
  color = 'black') + theme(
    axis.line = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y =
      element_blank(),
    axis.ticks = element_blank(),
    axis.title.x =
      element_blank(),
    axis.title.y =
      element_blank(),
    legend.position = "none",
    panel.background =
      element_rect(fill = rgb(
        255, 194, 102, maxColorValue = 255, alpha = 255
      )),
    panel.border = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor =
      element_blank(),
    plot.background = element_blank()
  )