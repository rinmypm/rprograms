x <- c("a", "b", "c", "d", "e")

print(x[1])
print(x[2])
print(x[1:4])
print(x[x > "a"])

u <- x >"a"
print(u)
print(x[u])

x <- matrix(1:6, 2, 3)
print(x[1, 2])
print(x[2, 1])

print(x[1,])

print(x[1, 2, drop = FALSE])

x <- list(foo = 1:4, bar = 0.6)
print(x[1])
print(x[[1]])
print(x$bar)
print(x[["bar"]])
orint(x["bar"])