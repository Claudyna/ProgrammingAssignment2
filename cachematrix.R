## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL 
set <- function(y) {                ## definiton of the set function to assign new 
x <<- y                             ## value of matrix in parent environment
inv <<- NULL                        ## if matrix is new, reset inv to NULL
        }
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
