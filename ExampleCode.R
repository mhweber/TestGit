library(rasterVis)
alt <- getData('worldclim', var='alt', res=2.5)
usa1 <- getData('GADM', country='USA', level=1)
oregon <- usa1[usa1$NAME_1 == 'Oregon',]
alt <- crop(alt, extent(oregon) + 0.5)
alt <- mask(alt, oregon)
levelplot(alt, par.settings=GrTheme)


