x <- c(0.5, 0.6)       ## numeric
print(x)
x <- c(TRUE, FALSE)    ## logical
print(x)
x <- c(T, F)           ## logical
print(x)
x <- c("a", "b", "c")  ## character
print(x)
x <- 9:29              ## integer
print(x)
x <- c(1+0i, 2+4i)     ## complex
print(x)

x <- vector("numeric", length = 10)
print(x)

## Implicit Cooercion
y <- c(1.7, "a")
print(y)
y <- c(T, 2)
print(y)
y <- c("a", TRUE)
print(y)

## Explicit Cooercion
x <- 0:6
print(class(x))
print(as.numeric(x))
print(as.logical(x))
print(as.character(x))

## Nonsensical Cooercion
x <- c("a", "b", "c")
print(as.numeric(x))

