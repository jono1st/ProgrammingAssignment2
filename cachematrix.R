## The following two functions will compute the inverse of a matrix
## and cache it. In this way, the inverse of a matrix only needs to be
## computed once, as its inverse will be cached.

## This function takes in a matrix and returns a list of functions
## which, set the value of a matrix, get the value of a matrix, set
## the value of the inverse matrix and get the value of the inverse
## matrix.

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i<<- NULL
	}
	get <- function() x
	setinverse <- function(inv) i <<- inv
	getinverse <- function() i
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
	
}


## The next function takes in a matrix and checks to see if its
## inverse has already been cached. If so, it returns that value. 
## Otherwise, it computes the inverse and stores in the setinverse 
## function.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(inv)){
        	message("getting cached data.")
        	return(i)
        }
        z <- x$get()
        i <- solve(z)
        x$setinverse(i)
        i
}
