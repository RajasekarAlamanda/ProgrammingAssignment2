## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Caching the Inverse of a Matrix:
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(mean) m <<- mean
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function
## To get the inverse of the matrix, "makeCacheMatrix" from the steps above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(mat, ...)
  x$setmean(m)
  m
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
