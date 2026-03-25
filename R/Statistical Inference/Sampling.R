#setting seed
set.seed(17765673)
#sample sizes vector
samples <- c(10, 100, 1000)

#sampling
for (sample in samples) {
  G <- rnorm(sample, mean = 0, sd = 1)
  E <- rnorm(sample, mean = 0, sd = 1)
  P <- G + E
  
  # mean and variance
  medias <- c(mean(P), mean(G), mean(E))
  variancias <- c(var(P), var(G), var(E))
  #printing resuls  
  print(paste("size: ", sample))
  print(paste("mean :", medias))
  print(paste("variance :", variancias))
  
  # Histogram
  hist(P, main = paste("Histogram of P", sample))
  
  # Density
  plot(density(P), main = paste("Density", sample))
  
  # Boxplot
  boxplot(P, G, E, 
          names = c("P", "G", "E"),
          main = paste("Boxplot", sample )
          )
  
  # Scatter plot
  plot(G, P,
       main = paste("P x G", sample),
       xlab = "G", ylab = "P",
       pch = 19)
}