## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this is to create the cache matrix
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x) #calculate the inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

CacheMatrix <- makeCacheMatrix()
CacheMatrix$set(matrix(1:4, 2))
CacheMatrix$get()
CacheMatrix$setInverse()
CacheMatrix$getInverse()
