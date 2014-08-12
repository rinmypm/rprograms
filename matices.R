m <- matrix(nrow = 2, ncol = 3)
print(m)
print(dim(m))
print(attributes(m))

m <- matrix(1:6, nrow=2, ncol=3)
print(m)

m <- 1:10
print(m)
dim(m) <- c(2,5)
print(m)

x <- 1:3
y <- 10:12
print(cbind(x, y))
print(rbind(x, y))