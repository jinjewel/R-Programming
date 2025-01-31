rm(list = ls())



#파란 플롯 그리기

par(pty = "s")

plot(0,0,type = "n",
     
     xlim = c(-1,1), ylim = c(-1,1),
     
     col.axis = "blue", fg = "blue",xlab = "",ylab = ""
     
)

#빗줄기 시작점 설정
#r_num 은 빗줄기 갯수, m 은 기울기, d는 p1과 p2의 x값 차이


r_num = 100
m = 3

x1 = runif(r_num, -1, 1)
y1 = runif(r_num, -1, 1)
d = runif(r_num, 0.1, 0.3)

x2 = NULL
y2 = NULL

for(i in 1:r_num)
  
{
  x2[i] = x1[i] + d[i]
  y2[i] = y1[i] + m*d[i]
  
  lines(x = c(x1[i],x2[i]), y = c(y1[i],y2[i]),col = "blue",lwd = 2)
  
  Sys.sleep(0.6) 
  
  looking_r_num = 15
  
  if(i>looking_r_num){
    
    lines(x = c(x1[i-looking_r_num],x2[i-looking_r_num]), y = c(y1[i-looking_r_num],y2[i-looking_r_num]),col = "white",lwd = 2)
    lines(x = c(x1[i-looking_r_num+3],x2[i-looking_r_num+3]), y = c(y1[i-looking_r_num+3],y2[i-looking_r_num+3]),col = "white",lwd = 2)
    lines(x = c(x1[i-looking_r_num+5],x2[i-looking_r_num+5]), y = c(y1[i-looking_r_num+5],y2[i-looking_r_num+5]),col = "white",lwd = 2)
    lines(x = c(x1[i-looking_r_num+7],x2[i-looking_r_num+7]), y = c(y1[i-looking_r_num+7],y2[i-looking_r_num+7]),col = "white",lwd = 2)
  }
  
}

