## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL 
set<-function (y) {
  x<<-y
  m<<-NULL
}  ##Set the value of the matrix
get <-function() x ##Get the value of the matrix
setinverse<-function(inverse) m<<-inverse##Set the value of the Inverse
getinverse<-function() m ##Get the value of the Inverse

list(set=set, get=get, setinverse=setinverse,
     getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m    
  
  3+3
  
  
  
  
  ## Return a matrix that is the inverse of 'x'
}
