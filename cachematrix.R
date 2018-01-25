## Put comments here that give an overall description of what your
## functions do

## create set of funcations to operate on the matrix, set and get methods
## and setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
  r <- NULL
  set <- function(y) {
	x <<- y
	r <<- NULL  
  }
  get <- function() x
  setinverse <- function(inverse) r <<- inverse
  getinverse <- function() r
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## check if the inverse already cached if not calculate it and cache it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		r <- x$getinverse()
		if(!is.null(r)) {
			message("getting cached data")
			return(r)
		}
		data <- x$get()
		r <- solve(data, ...)
		x$setinverse(r)
		r
}