### final version - Programming Assignment 2
# "examplematrix" I always used as an example matrix of that the inverse should be created from
# it creates a matrix containing the values 1,2,1,1 and has 2 rows and 2 collumns
# feel free to test it with your own one, if you want to
examplematrix<-matrix(c(1,2,1,1), nrow = 2, ncol = 2)

# makecachematrix creates the object "inv_matrix", that will cache the inverse matrix
# if the caching was sucessful the function prints the message "inverse matrix 
# stored in cache" and prints the cached matrix
makecachematrix<-function(x=dummy_inv){
        inv_condition<<-dummy_matrix
        inv_matrix<<-x
        return(list("inverse matrix stored in cache",inv_matrix))
}

# cachesolve is the function creating the inverse of matrix x
cachesolve<-function(x){
        # the first if expression tests, if there was already an inverse matrix saved via
        # makecachematrix, if not it will calculate an inverse matrix of x, save the 
        # result in result and dummy_inv and dummy_matrix
        # (last two objects will be needed for further tests)
        if (!exists("inv_matrix")) {
                result<<-solve(x)
                dummy_inv<<-result
                dummy_matrix<<-x
                return(result)
                # the following else if constrution tests, if the current input x, of that
                # an inverse matrix should be calculated, is equal to the input of the last
                # inverse matrix that was saved by makecachematrix
                # if that is true the inv_matrix saved by makecachematrix will be printed
                # due to the task to not calculate the inverse again
        }else if (identical(x,inv_condition)) {
                print(inv_matrix)        
        }else{
                # if there is a new matrix of that the inverse should be calculated then
                # the following procedure will do this
                result<<-solve(x)
                dummy_matrix<<-result
                return(result)
        }
        
}
### for testing, not content of the task:
# the following expression can be used to run cachesolve 
# (examplematrix must be defined before)

##      cachesolve(examplematrix)
##      cachesolve (matrix(c(1,2,2,2), nrow = 2, ncol = 2))

# by the following expression the latest inverse matrix (inv_matrix) 
# and the matrix from that the inverse was calculated (inv_condition) will be saved
##      makecachematrix() 
