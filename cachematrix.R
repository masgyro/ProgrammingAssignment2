## These are a pair of functions that cache the inverse of a matrix

## step 1
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## step 2
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()

    ##if there is a cached inverse of 'x', just return it
    if(!is.null(m)) { 
        message("getting cached data")
        return(m)
    }
    
    ##otherwise, calculate the inverse of 'x' by using the solve function, then return it
    data <- x$get()
    m <- solve(matrix(b$get(),nrow=(sqrt(length(b$get())))))
    x$setinverse(m)
    m
}
