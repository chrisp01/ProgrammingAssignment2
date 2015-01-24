## Put comments here that give an overall description of what your
## functions do

## Funciton creates a matrix

makeCacheMatrix <- function(x = matrix()) {

  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setinverseMatrix <- function(inverse) inverseMatrix <<- inverse
  getinverseMatrix <- function() inverseMatrix
  list(set=set, get=get, 
       setinverseMatrix=setinverseMatrix, 
       getinverseMatrix=getinverseMatrix)
  
  
}


## Function either calculates the inverse matrix 
## or returns the cached matrix if it is already calculated

cacheSolve <- function(x, ...) {
  ## Inverse the matrix
  inverseMatrix <- x$getinverse()
  if(!is.null(inverseMatrix)) {
    message("get cached data.")
    return(inverseMatrix)
  }
  data <- x$get()
  inverseMatrix <- solve(data)
  x$setinverse(inverseMatrix)
  inverseMatrix
  
}
