##Simulation bernoulli and pareto distributions

## Simulation pareto distributions by uniform distributions

makeCacheMatrix <- function(a,b,N){
  u <- runif(N)	
  pareto <- b/(u^(1/a))
  return(pareto)
}

}


## Simulation bernoulli distributions with a for loop 

cacheSolve <- function(p,N){
  x <- rep(NA,N)
  for(i in 1:N){
    u <- runif(1)
    if(u < p){x[i] <- 1}
    else{x[i] <- 0}
  }
  return(x)
        
}
