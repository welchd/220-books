qmn <- function(m,n){
  return(prod(seq(m-n+1,m)/m))
}

m = c(25,100,400,1600)

for (i in 1:4){
  n = 0:m[i]
  q = n
  for (j in 1:(m[i]+1)){
    q[j] = qmn(m[i],j) 
  }
  pdf(file = paste("birthday",m[i],".pdf", sep = ""))
  par(mar=c(6,7,4,1)+.1)
  plot(n,q, type = "l", ylab = "Q", xlab = "n", cex.axis = 2, cex.lab = 2, col = 2)
  dev.off()
}

