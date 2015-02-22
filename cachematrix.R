## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(solve) m <<- solve
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## This function caches the inverse of a matrix to be used when appropriate

## To whoever ends up peer reviewing this:
## I actually have no idea what this exercise was supposed to teach and I
## still don't understand this "lexical scoping" thing.
## Basically all I have done here is copied the example code and replaced
## "mean" with "solve" and changed a couple of variable names

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    m <- x$getinv()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
