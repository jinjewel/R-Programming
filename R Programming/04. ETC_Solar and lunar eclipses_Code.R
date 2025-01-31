rm(list=ls())

n=30
x=seq(-0.5,0.5,length=n)
x
f=sqrt((0.5)^2-x^2)
points(x,f)

for(j in 0:6)
{   
  for(i in n:1)
  {
    par(pty = "s", bg = "black")
    plot(0, 0.5,pch=16,cex=10,col="yellow",  
         xlab = "", ylab = "",
         xlim = c(-1, 1), ylim = c(-1, 1),
         col.axis="white",fg="white",
         main="Ecilpse",col.main="white")
    
    p=x[i]
    points(p,sqrt((0.5)^2-p^2)-0.3+0.1*j,pch=16,col="black",cex=10)
    
    Sys.sleep(0.1)
  }
}


