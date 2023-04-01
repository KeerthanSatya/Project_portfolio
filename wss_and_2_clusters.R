#wss_plot

wssplot <- function(data, nc =15, seed =1234)
{
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc,wss,type="b",xlab="Number of Clusters",
       ylab="Within Group Sum of Squares")
  
}
wssplot(finaldata)

KMeff = kmeans(finaldata,2) 

autoplot(KMeff,finaldata,frame=TRUE)

library(cluster)
?silhouette

avg_sil <- function(k)
{
  KMeff <- kmeans(finaldata,centers = k, nstart = 100)
  ss <- silhouette(KMeff$cluster, dist(finaldata))
  mean(ss[,3])
}
avg_sil(2)
avg_sil(4)
avg_sil(6)
avg_sil(3)

