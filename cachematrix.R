##INVERSE OF A MATRIX

## The function can cache the inverse of a matrix


makeCacheMatrix <- function(w=matrix()) {
  u <- NULL
  set <- function(v) { 
            w <<- v
            u <<- NULL 
}
  
  get <- function() w
  setInverse <- function(solveMatrix)
                 u <<- solveMatrix
  getInverse <- function() v
  list(set = set, get= get, setInverse=setInverse, getInverse= getInverse)

}


## The function calculates the inverse of the special "matrix"
## Suppose that the matrix is invertible, that is, it is a matrix of size nxn

cacheSolve <- function(u,...){
  u <- u$getInverse()
  if(!is.null(u) {
       return(u)
  }
  v <- x$get()
  u <- solve(v)
  u$setInverse(u)
   u
        
}
