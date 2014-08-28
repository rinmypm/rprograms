library(raster)
library(animation)

logo <- raster(system.file("external/rlogo.grd", package="raster"), values=TRUE)

saveHTML(
  for(i in 1:250)
  {
    logo1 <- logo
    logo1[logo1<i] <- 0
    #here you could also extract a RasterLayer from a RasterStack
    plot(logo1, main=i)
  },
  loop=1,
  interval= 0.1,
  outdir = getwd(),
  moviename="logo")