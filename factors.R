x <- factor(c("yes", "yes", "no", "yes", "no"))
print(x)
print(table(x))
print(unclass(x))
#attr(,"levels")

x <- factor(c("yes", "yes", "no", "yes", "no"),
           levels = c("yes", "no"))
print(x)