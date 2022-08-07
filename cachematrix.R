## R program to calculate the inverse of the matrix and cache the value

## creates a special matrix

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set <- function(y){
    x<<- y 
    inv <<- NULL
  }
  get<-function() x
  setinv <- functio(inv) inv<<-solveMatrix
  getinv<- function() inv
  list(set=set,get=get,
       setinv = setinv,
       getinv=getinv)
}


##The function calculate the inverse of the special matrix, first checking if the inverse is already cached. 

cacheSolve <- function(x, ...) {
        inv<- x$getinv()
        if(!is.null(inv)){
          message("getting cached data")
          return(inv)
        }
        data<- x$get()
        inv<-solve(data)
        x$setinv(inv)
        inv
}

