#To set and get a matrix

#To set the matrix:
makeCacheMatrix <- function(x = matrix()) {
  vect <- NULL
  set <- function(y){
  x <<- y
  vect <<- NULL
}
get <- function() x
setmatrix <- function(solve) vect <<- solve
getmatrix <- function() vect
list(set = set, get = get,
   setmatrix = setmatrix,
   getmatrix = getmatrix)
}

#To get and solve the matrix:
cacheSolve <- function(x, ...) {
    vect <- x$getmatrix()
    if(!is.null(vect)){
	message("getting cached data")
      return(vect)
    }
    matrix <- x$get() 
    vect<-solve(matrix, ...)
    x$setmatrix(vect)
    vect
}}


