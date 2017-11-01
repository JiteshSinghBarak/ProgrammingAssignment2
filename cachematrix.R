## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## makeCacheMatric function takes a matrix as an argument, assigns it to x.
## set the value to the matrix and get its value too
## creates a variable inverseMat.
## inverseMat represent the inverse of matrix which we took as argument to function
## then this function sets and gets the value of inverseMaat.


makeCacheMatrix <- function(x = matrix()) {
  ##creating a variable
  inverseMat <- NULL
  
  ##setting the matrix value
  setMatrix <- function(y){
    x <<- y
    inverseMat <<- NULL
  }
  
  ##getting the matrix value
  getMatrix <- function(){
    x
  }
  
  ##setting the inverse of matrix
  setInverse <- function(invMat){
    inverseMat <<- invMat
    
  }
  
  ##getting the inverse of matrix
  getInverse <- function(){
    inverseMat
  }
  
  list(setMatrix = setMatrix , getMatrix = getMatrix, setInverse = setInverse , getInverse = getInverse)
}


## Write a short comment describing this function

## cacheSolve function takes output of the makeCacheMatrix function as an input argument
## it checks whether the inverse has already be computed or not
## if yes it will print getting the inverse and show the result
## else it gets the original matrix by calling getMatrix function and then compute its inverse via solve() function
## then it sets the inverseMatrix by calling setInverse function
## and lastly displays the inverse.

cacheSolve <- function(x, ...) {
  inverseMat <- x$getInverse()       ##get the cached object
  if(!is.null(inverseMat)){          ##if inverse is already computed
    print("getting the result")      
    inverseMat                       ##display the result
  }
  
  else{                              ##if inverse is not calculated previously
    matrix <- x$getMatrix()          ## get the matrix data
    inverseMatrix <- solve(matrix)   ## compute the inverse
    x$setInverse(inverseMat)         ## cache the object
    inverseMat                       ## display the result
    
  }
}
