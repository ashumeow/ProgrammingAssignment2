## cachematrix.R

## Description:-
## --- The inverse of a matrix provides caching power.
## --- The function helps in creating a special matrix object that will cache the inverse of it's matrix.

#Solution--
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  ## Set
  set <- function(ig) {
    x <<- ig
    inverse <<- NULL
  }
  
  ## Get
  get <- function() {
    x
  }
  
  ## Set inverse
  set_inverso <- function(inverso) {
    inverse <<- inverso
  }
  
  ## Get inverse
  fetch_inverso <- function() {
    inverso
  }
  list(set=set,get=get,set_inverso=set_inverso,fetch_inverse=fetch_inverso)
}

## Description:-

## With the help of "makeCacheMatrix" function, this function "cacheSolve" helps in computing the inverse matrix.

## If inverse matrix had been already implemented,
## then cacheSolve will be able to fetch or retrieve the inverse matrix from the cache
## Solution
cacheSolve <- function(x,...) {
  inverse <- x$fetch_inverso()
  if(!is.null(inverse)) {
    message("Hold on! Fetching the cached data...(^_^)")
    inverse
  }
  data <- x$get()
  inverse <- solve(data,...)
  x$set_inverso(inverse)
  inverse
} 
