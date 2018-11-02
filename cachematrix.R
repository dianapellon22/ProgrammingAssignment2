## Simulations of pareto and bernoulli distributions 


## Simulate pareto distribution by some uniforms distributions

simpar <- function(a,b,N) {
        u <- runif(N)
        pareto <- b/(u^(1/a))
        return(pareto)

}


## Simulate bernoulli distribution

simber <- function(p,N) {
        x <- rep(NA, N)
        for(i in 1:N) {
                v <- runif(1)
                if(v<p) {
                        x[i] <- 1 }
                else {
                        x[i] <- 0}
                return(x)
}
