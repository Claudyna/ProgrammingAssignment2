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
     inv <- x$getinverse() ##  getting the matrix inverse
     if(!is.null(inv)) { ## only if marix inverse isn't null
         message("getting cached matrix")
         return(inv) ## return of  previously calculated inversion of matrix
     }
     data <- x$get()
    inv <- solve(data, ...) ##calculation of the matrix inverse
    x$setinverse(inv)
    inv ##returning of  matrix inverse
  }		  
