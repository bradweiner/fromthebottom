# library(magrittr)
# library(tidyverse)
# library(fromthebottom)
# library(ggeasy)

d<- source("https://www.openintro.org/data/R/satgpa.R")
d <- d$value
head(d)

d %<>% as.data.frame(.)
d$sat_v <- d$sat_v * 10
d$sat_t <- d$sat_t * 10
d$sat_sum <- d$sat_sum * 10

head(d)

p <- ggplot(d, aes(x = fy_gpa,y = sat_sum,color = fy_gpa)) +
  geom_point(size = 3.0) +
  scale_color_phish(palette = "hoist", discrete = F,reverse = T) +
  theme_minimal() +
  scale_x_continuous(breaks = seq(0,4,.5)) +
  #ggtitle("Slip, Stitch, and Pass") +
  easy_add_legend_title("First Year GPA") +
  labs(x = "First Year GPA", y= "SAT Total")

p

# a data frame with all the annotation info
annotation <- data.frame(
  x = c(0.5,1.5,3.0),
  y = c(1400),
  label = c("Slip", "Stitch","Pass")
)

# Add text
p <- p + geom_text(data=annotation, aes(x=x, y=y, label=label),
              color="black",
              size=10 ,fontface="bold")

p

ggsave(p,filename = "slip_stitch.png",device = "png",width = 16.6,height = 9.125,units = "in",dpi = 72)
