
## PlotRandom.R
##  Author: Jacob Henn
##  Date: 2021-Oct-06
##
## Purpose: 
##  A function that will generate a random sample
##  of iid Normal Random values. Then it will 
##  plot a histogram with a overlaid mean 
##  on the plot. 
##
##
## Inputs: 
##  numpts= the number of points to generate 
##  mu= the theoretical mean of the Normal distribution 
##  sigma= the standard deviation of the Normal distribution 
##  numbins= The number of bins in the histogram 
##  meanColor= the color for the overlaid mean 
##  seed= a random number generate seed, using to 
##  ensure reproducibility
##
## Output:A list with the following elements 
##  Random_values= a vector of the generated random 
##  normal values 
##  Mean_x= the sample mean of the Random_values 
##  SD_x= the sample standard deviation of Random_values
##

plotRandomNormals <- function(numpts=100, 
                              mu=0, sigma=1, 
                              numbins=10, 
                              meanColor="navy", 
                              seed=10062021){
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v=mean_x, col=meanColor, lwd=2)
  
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x))
}






