#Alyssa Glomb
#Code Chunk
#SIS 750 Portfolio - final

#open packages
library(tidyverse)
library(ggplot2)

#theme
theme_AMG=function(){ 
theme_light(base_size=12, base_family="Avenir") %+replace% #set consistent font
  theme(
    panel.background=element_blank(), #remove plot background
    legend.background=element_rect(fill="transparent", colour=NA), #legend background transparent
    legend.key=element_rect(fill="transparent", colour=NA),
    plot.title=element_text(color='blue', size="16", hjust=0.5, vjust=1), #center plot title, adjust appearance
    plot.subtitle=element_text(hjust=0.5),
    panel.grid.minor=element_blank())} #remove minor grid lines

#example
ggplot(iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point(aes(color=Species))+
  labs(title= 'Petal Length vs. Width')+
  theme_AMG()

ggplot(cars, aes(x=speed, y=dist))+
  geom_point()+
  labs(title= 'Car Speed vs. Distance')+
  theme_AMG()


