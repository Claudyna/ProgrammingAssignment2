## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL 
set <- function(y) {                ## definiton of the set function to assign new 
x <<- y                             ## value of matrix in parent environment
inv <<- NULL                        ## if matrix is new, reset inv to NULL
        }
 get <- function() x                     ## definiton of getting function - returns value of the matrix argument
     
     setinverse <- function(inverse) inv <<- inverse  ## assignment value of inv in the parent environment
    getinverse <- function() inv                     ## getting the value of inv where is called
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
                                                                                 

        }
        
## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
     inv <- x$getinverse()
     if(!is.null(inv)) {
         message("getting cached matrix")
         return(inv)
     }
     data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
  }		  
