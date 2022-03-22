## Put comments here that give an overall description of what your
## functions do

## Cache Matrx function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y #Set objects with <<- operator to the matrix
        i <<- NULL  #Set object of the inverse that lives in the enviroment
    }
    get <- function() x
    setInverse <- function(inverse) i <<- inverse #set inverse object use the value of set function
    getInverse <- function() i
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


#Cache Solve
#This function computes the inverse of the special
#"matrix" returned by `makeCacheMatrix` above. If the inverse has
#already been calculated (and the matrix has not changed)

cacheSolve <- function(x, ...) {
    i <- x$getInverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setInverse(i)
    i  
}






















