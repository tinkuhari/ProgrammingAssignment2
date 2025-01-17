## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  
  
  setInverse <- function(inverse){
    
    i <<- inverse
  }
  
  getInverse <- function() i
  
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    i <- x$getInverse()
    
    if(!is.null(i)){ # get from cache if inverse in already in cache
      print("retrieving from cache")
      return(i)
    }
    
    data <- x$get()
    inv <- solve(data)
    x$setInverse(inv)  #add inverse to cache
    inv
}
