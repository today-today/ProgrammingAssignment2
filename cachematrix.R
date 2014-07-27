## Those two functions could help to reduce the time 
## used to calculate the inverse of a special matrix.

## This function is used to make a special matrix and 
##store its vallue.

makeCacheMatrix <- function(x = matrix()) {
  s<-NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) i <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## This function is used to test the matrix
## is soleved or not and return the solve.
## If it has been solved, its inverse will be 
## returned directly. If not, it will be calculated.

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
## Return a matrix that is the inverse of 'x'
}
