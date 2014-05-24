## These two functions store a matrix, calculuate its inverse, and store this inverse
##for later use


#function which takes a matrix x as input, and stores this matrix, as well as the inverse if calculated

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        
#define function which stores the new matrix in set, and initilizes the inverse to NULL
#across all environments (e.g., if there is an old m hanging around elsewhere get rid of # it)
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
#define function which retrieves the matrix
        get <- function() x
        
#define function which stores a manual input inverse of x
# use  <<- operator to assign a manual input value of "solve" to m 
setinv <- function(solve) {m <<- solve}

#define function which retrieves the stored inverse of x
        getinv <- function() m
        
#return list object of these functions
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


#function to calculate the inverse of a matrix, if that inverse does not already exist #in the stored values from makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

#check if inverse previously calculated, if not then move on to calculate
# if yes (!is.null is true), then retrieve cached invserse
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
#retrieve the matrix        
        data <- x$get()

#matrix inverse calculation
        m <- solve(data, ...)

#assign the inverse to setinv 
        x$setinv(m)
        m
}
