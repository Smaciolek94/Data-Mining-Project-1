xnorm = rnorm(10000)
ynorm = rnorm(10000)

xunif = runif(10000)
yunif = runif(10000)

xexp = rexp(10000, rate = 1)
yexp = rexp(10000, rate = 1)

xgamma = rgamma(10000, shape=2)
ygamma = rgamma(10000, shape=2)

xbeta = rbeta(10000, 2, 2)
ybeta = rbeta(10000, 2, 2)

sampledataframe <- cbind(xnorm,ynorm,xunif,yunif,xexp,yexp,xgamma,ygamma,xbeta,ybeta)

write.csv(sampledataframe,"D:\\588\\Group Project 1\\Sample Data.csv")
