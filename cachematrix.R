##Simulation bernoulli and pareto distributions

## Simulation pareto distributions by uniform distributions
## Donde a, b son los parámetros de mi distribución pareto 
## u guarda a una distribucion uniforme (N)
## finalmente obtenemos la distribución pareto con los párametros que ingresamos

makeCacheMatrix <- function(a,b,N){
  u <- runif(N)	
  pareto <- b/(u^(1/a))
  return(pareto)
}

}


## Simulation bernoulli distributions with a for loop 
## El contador guardará en x[i] los éxitos y fracasos que 
## se obtengan de acuerdo a los párametros establecidos
## para nuestra distribución Bernoulli.

cacheSolve <- function(p,N){
  x <- rep(NA,N)
  for(i in 1:N){
    u <- runif(1)
    if(u < p){x[i] <- 1}
    else{x[i] <- 0}
  }
  return(x)
        
}
