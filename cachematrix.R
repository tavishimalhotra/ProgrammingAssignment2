## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  setm <- function(y){
    x <<-y
    m <<- NULL
  }
  getm <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve<- function() m
  list(setm = setm, getm = getm, setsolve = setsolve, 
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  data <- x$getm()
  m <- solve(data,...)
  x$setsolve(m)
  m
}
