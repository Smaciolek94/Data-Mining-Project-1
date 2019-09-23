bgplot <- function(x,y,res,scale="raw") {
  nc <- res
  nr <- res
  zx = c(1:nr,rep(1,nc),1+trunc( nr*(x- min(x))/(max(x)-min(x)) ))
  zx[zx>nr] = nr
  zy = c(rep(1,nr),1:nc,1+trunc( nc*(y- min(y))/(max(y)-min(y)) ))
  zy[zy>nc] = nc
  z = table(zx,zy)
  z[,1]=z[,1]-1
  z[1,]=z[1,]-1
  if (scale=="l") z= log(1+z)
  z <- as.data.frame(z)
  ggplot(data=z, aes(x=zx,y=zy,col=Freq))+ geom_point()+scale_x_discrete(breaks=seq(min(x),max(x),nr+1))+scale_y_discrete(breaks=seq(min(y),max(y),nr+1))+ggtitle("BINPLOT by ggplot") + xlab("X") + ylab("Y")
}
x = rnorm(10000)
y = rnorm(10000)
bgplot(x,y,100)
bgplot(x,y,100,'l')