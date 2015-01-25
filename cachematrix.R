## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1. set the value of the matrix 
# 2. get the value of the matrix 


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function

# 3. set the value of inverse of the matrix 
# 4. get the value of inverse of the matrix 
# The following function returns the inverse of the matrix.First it checks if 
# the inverse of that matrix has already been computed. If so, it gets the result and skips the 
# computation. If not, it computes the inverse, sets the value in the cache via 
# setmatrix function. 


cacheSolve <- function(x=matrix(), ...) {
		## Return a matrix that is the inverse of 'x'
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

##Checking above function

 x = rbind(c(2, -2/4), c(-2/4, 2)) 
 m = makeCacheMatrix(x) 
 m$get() 

## No cache in the first run 
cacheSolve(m) 

## Retrieving from the cache in the second run 
cacheSolve(m) 


