library(animation)
library(demography)
nyears <- length(fr.mort$year)
makeplot <- function(){
  for(i in 1:nyears)
  {
    x <- fr.mort
    if(i<nyears)
      x$rate$male[,(i+1):nyears] <- NA
    plot(x,series="male",ylim=c(-9.5,1.5),
         main=paste("French: male mortality (",fr.mort$year[1]-1+i,")",sep=""))
    if(i>1)
      x$rate$male[,1:(i-1)] <- NA
    lines(x,series='male',lwd=2,col=1)
  }
}
oopt = ani.options(interval = 0, nmax = nyears)
saveHTML(makeplot(),interval = 0.1, width = 580, height = 400)
ani.options(oopt)
#ffmpeg -f image2 -r 15 -i animation.gif -b 800k ani.mp4
