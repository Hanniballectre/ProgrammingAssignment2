## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function will cache he value of inverse matrix so we dont have to compute it again 
## and again

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}




## Write a short comment describing this function
##this will return the inverse of the matrix we created by above function

cacheSolve <- function(x, ...) {
  
        ## Return a matrix that is the inverse of 'x'
  invr <- x$getinverse()
  if(!is.null(invr)) {
    message("getting cached data")
    return(invr)
  }
  matrx <- x$get()
  invr <- inverse(matrx, ...)
  x$setmean(invr)
  invr
}

