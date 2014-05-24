#function which takes a matrix x as input, and stores this matrix, as well as the inverse #if calculated

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        
#define function which stores the matrix in set, and initilizes the inverse to NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
#define function get which retrieves the matrix
        get <- function() x
#define function which stores the inverse of x
        setinv <- function(solve) m <<- solve
#define function which retrieves the inverse of x
        getinv <- function() m
#return list object of these functions
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}