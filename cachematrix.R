## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


    makeCacheMatrix <- function(x = matrix()) {
        mat<-NULL
        set<-function(y){
            x<<-y
            mat<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) {
            mat<<- solve
        }
        getmatrix<-function(){
            mat
        }
        list(set=set, get=get,
        setmatrix=setmatrix,
        getmatrix=getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    mat<-x$getmatrix()
    if(!is.null(mat)){
        message("getting cached data")
        return(mat)
    }
    matrix<-x$get()
    mat<-solve(matrix, ...)
    x$setmatrix(mat)
    mat
        ## Return a matrix that is the inverse of 'x'
}
