
small.ints = 1:1000
sapply(small.ints, function(x) x^2)

library(rmr2)

rmr.options(backend = "local")

small.ints = to.dfs(1:1000)
mapreduce(
  input = small.ints, 
  map = function(k, v) cbind(v, v^2))