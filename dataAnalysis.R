
## Creating a kernel density plot
## Packages
library(ggplot2)
ggplot(nobel, aes(age, fill = category)) + 
        geom_density(alpha = 0.3, size = 0.8) + xlab("Edad") + 
        ylab("Densidad") + 
        scale_x_continuous(breaks = seq(15, 90, 5)) + 
        scale_fill_manual(values = c("red", "blue", 
                                     "gold", "green2", "purple",
                                     "orangered"))
        
