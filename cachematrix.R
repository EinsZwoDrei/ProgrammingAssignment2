## Put comments here that give an overall description of what your
## functions do
## set the matrix
## get the matrix
## set the inverse
## get the inverse
## the resulting list is an input to cacheSolve(), which follows
## Write a short comment describing this function
makeCacheMatrix <- function(x = numeric()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) nv <<- inverse
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
## This takes the output of makeCacheMatrix()
## checks to see if the inverse has been calculated
## if not, it calculates it
cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- invervse(data, ...)
  x$setinv(inv)
  inv
}

