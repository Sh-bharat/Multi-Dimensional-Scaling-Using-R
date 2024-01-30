## MDS
# let the data we want to perform Multi-Dimensional Scaling  is 
data=cbind(c(0,93,82,133),c(93,0,52,60),c(82,52,0,111),c(133,60,111,0))

#A is the distance matrix
A=as.matrix(dist(A,diag=TRUE,upper=TRUE))

#taking input from user
new_dim <- readline(prompt = "Enter number of Dimensions  you want in new Data : ");

# convert the inputted value to integer
new_dim = as.integer(new_dim);

n<-ncol(data)

#calculating p2 matrix
P2<-A*A
#calculating J matrix
J<-diag(n)-(1/n)*(as.matrix(rep(1,n))%*%t(as.matrix(rep(1,n))))
#finding B matrix
B<-(-1/2)*(J%*%P2%*%J)

#Finding eigenvalues,vectors after then making singular value matrix and vectors matrix
eig<-eigen(B)
eig$values
eig$vectors
singular_values<-eig$values^(0.5)
singular_values_matrix<-diag(singular_values[1:new_dim])
Vectos_matrix<-eig$vectors[,1:new_dim]
result<-Vectos_matrix%*%singular_values_matrix
#the result is 
print("The resulatant matrix after performing Multi-Dimensional Scaling  is given by ")
print(result)

#Plotting 
X<-result[,1];X
Y<-result[,2]
plot(X,Y,pch=19,xlim=range(X)+c(0,10),ylim = range(Y)+c(0,20),main = "MDS map")
text(X,Y,pos=4,labels = c("cph","aar","ode","aal"))
abline(v=0,h=0)
