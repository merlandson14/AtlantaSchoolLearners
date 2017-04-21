atlanta$ClusterBlack <- 0L
for (i in 1:nrow(atlanta)) {
  if(atlanta$PercentBlack[i] >= .25 & atlanta$PercentBlack[i] < .5) 
      {atlanta$ClusterBlack[i] <- 25L} 
  else if(atlanta$PercentBlack[i] >= .5 & atlanta$PercentBlack[i] < .75) 
      {atlanta$ClusterBlack[i] <- 50L} 
  else if(atlanta$PercentBlack[i] >= .75) 
  {atlanta$ClusterBlack[i] <- 75L}
}
atlanta$ClusterBlack <- as.factor(atlanta$ClusterBlack)