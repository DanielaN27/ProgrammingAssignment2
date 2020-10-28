## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
#inicia la matriz a NULL
inverse <- NULL
set <- function (y)
        {
        x<<- y
        inverse <<- NULL
        }
get <- function
        {
        x
        }
setinverse <- function (inv)
        {
        inverse <<- inv
        }
setinverse <<- inv
}
getinverse <- function()
        {
        inverse
        }
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
       

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if (!is.null(inverse))
                {
                message("obteniendo datos cache")
                return(inverse)
                }
        data <=x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
        }
test <- function()
        {
        my_matrix <- makeCacheMatrix(matrix(1:4,2,2))
        my_matrix$get()
        my_matrix$getinverse()
        cacheSolve(my_matrix)
        my_matrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2))
        cacheSolve(my_matrix)
        my_matrix$get()
        my_matrix$getinverse()
        my_matrix$get() %% my_matrix$getinverse()
}

        
        
                 
             
