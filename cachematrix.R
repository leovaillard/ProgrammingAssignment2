# Assignment: Caching the inverse of a matrix

# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute
# it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of 
# functions that cache the inverse of a matrix.

# Write the following functions:

# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
# If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
# Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix,
# then solve(X) returns its inverse.


## Functions that cache the inverse of a matrix.  This assumes that the matrix provided will always be invertible.

## function to create a "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL     # create a new variable to store the inverted matrix and set its value to NULL
    
    set <- funcion(y) {
        x <<- y     # assign the value of y to A
        inv <<- NULL     # assign the value NULL to inv
    }
    
    get <- function () x     # returns the matrix x
    
    setinv <- function(inverse) <<- inv    # assign the value of the inverted variable into the inv variable
    
    getinv <- function() inv     # return the cached value of the inverted matrix x
    
    list(set = set, get = get, setmean = setmean, getmean = getmean)
    
}


## Function to compute the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
    # Return a matrix that is the inverse of 'x'
    
    inv <- x$getinv()     # assign the value of the cached matrix from makeCacheMatrix to inv
    
    if(!is.null(inv)) {     # verify if the calculation hasn't been done beforehand. If so, return the cached value
        message("Getting cached data")
        return(inv)
    }
    
    mymatrix <<- x     # assign the value of x to a new variable called mymatrix
    
    inv <- solve(mymatrix)     # store the value of the inverted matrix in inv
    
    x$setinv(inv)     # cache the inv variable
    inv
}
