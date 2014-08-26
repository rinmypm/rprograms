groups = rbinom(32, n = 50, prob = 0.4)

groups = to.dfs(groups)
from.dfs(
  mapreduce(
    input = groups, 
    map = function(., v) keyval(v, 1), 
    reduce = 
      function(k, vv) 
        keyval(k, length(vv))))