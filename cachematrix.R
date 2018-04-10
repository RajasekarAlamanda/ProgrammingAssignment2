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
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## To get the inverse of the matrix, "makeCacheMatrix" from the steps above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

### Solution:
#mat <- matrix(c(1,3,5,6), nrow=2, ncol=2, byrow=TRUE)
#mat
##  [,1] [,2]
## [1,]    1    3
## [2,]    5    6
#mat1<- makeCacheMatrix(mat)
#cacheSolve(mat1)
##            [,1]       [,2]
## [1,] -0.6666667  0.3333333
## [2,]  0.5555556 -0.1111111