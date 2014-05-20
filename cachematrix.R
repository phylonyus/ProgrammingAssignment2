## makeCacheMatrix caches a matrix inverse for quick
## return with the cacheSolve functions

## creates a cache of the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function () x
     setinv <- function(newinv) inv <<- newinv
     getinv <- function() inv
     list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Prints the inverse of a matrix after checking if
## if it's inverse has been cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getinv()
     if(!is.null(inv)) {
          message("loading in a matrix, yo")
          return(inv)
     }
     data <- x$get()
     inv <- solve(data)
     s$setinv(inv)
     inv
}
