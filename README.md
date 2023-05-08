# Code Chunk

## Unique Plot Theme for SIS 750 Portfolio  
### Alyssa Glomb


This code chunk is a unique theme for plots and graphs in `R`. The code is presented below with annotations along with example graphs showing how the theme can be applied to use the same style on multiple graphs easily. 

This theme is based on the `ggplot` theme `theme_light` and removes the background from both the plot and legend. Minor gridlines are removed to reduce visual clutter. The title is modified to be bold and centered.  



```{r setup, include = TRUE}
knitr::opts_chunk$set(
  echo=TRUE, warning=FALSE, dev='png',
  fig.width = 4, fig.asp = 0.618, fig.align = 'center', 
  out.width = "70%")
  
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
    plot.title=element_text(face='bold', size="16", hjust=0.5, vjust=1), #center plot title
    plot.subtitle=element_text(hjust=0.5),
    panel.grid.minor=element_blank())} #remove minor grid lines
```


Example of Theme Use
```{r, echo=T, eval=T, message = F, warning = F}

P1 = ggplot(iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point(aes(color=Species))+
  labs(title= 'Petal Width vs. Length')+
  theme_AMG()
  
print(P1)

```
