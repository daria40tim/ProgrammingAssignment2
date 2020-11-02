## Put comments here that give an overall description of what your
## functions do

## Getters and setters of matrix and it's inverse

makeCacheMatrix <- function(matrix = matrix()) {
  inv <- NULL
  set <- function(y) {
    matrix <<- y
    inv <<- NULL
  }
  get <- function() matrix
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## This function computes the inverse of the matrix
cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(m)
  m
}
