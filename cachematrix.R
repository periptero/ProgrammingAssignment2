## Put comments here that give an overall description of what your
## functions do

## Comment: The two functions are used to compute the inverse matrix of a given matrix

## Write a short comment describing this function

## Comment: makeCacheMatrix is a function which takes a matrix as an argument and returns its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  mat1 <- NULL
  set <- function(y) {
    x <<- y
    mat1 <<- NULL
  }
  get <- function() x
  setreverse<- function(reverse) mat1 <<-reverse
  getreverse <- function() mat1
  list(set = set, get = get,
       setreverse = setreverse,
       getreverse = getreverse)
}


## Write a short comment describing this function

## Comment: cacheSolve computes the inverse of a matrix if it has not been computed. If has been already computed it 
## just returns its computed value 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat1 <- x$getreverse()
  if (!is.null(mat1)) {
    message("getting cached reverse matrix")
    mat1
  } else {
    mat1 <- solve(x$get())
    x$setreverse(mat1)
    mat1
}
}
