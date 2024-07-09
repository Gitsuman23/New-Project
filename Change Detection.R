library(raster)
library(terra)
library(sf)
data<-raster("D:/lulc class1.tif")
plot(data)
area<-shapefile("D:/STUDY_AREA.shp")

data1<-raster("D:/lulc class2.tif")
extent(data)<-extent(data1)
ncell(data1)<-ncell(data)
data*1
s<-data1-data
plot(s)
writeRaster(s,"D:/chasnge detaction.tif")