#function to calculate the inverse of a matrix, if that inverse does not already exist
cacheSolve <- function(x, ...) {
#check if inverse previously calculated, if not then move on to calculate
# if yes (!is.null is true), then retrieve cached invserse
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
#matrix inverse calculation
        m <- solve(data, ...)

        x$setinv(m)
        m
}
