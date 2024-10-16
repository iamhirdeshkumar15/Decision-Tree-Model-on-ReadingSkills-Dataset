# Find whether a sample is native or not from "reading" datasets using decision tree.
install.packages("party")
library(party)
k <- readingSkills # in-build data-set (package party)
#View(readingSkills)
str(k)
k$nativeSpeaker<-factor(k$nativeSpeaker) # not required to change in factor because its all in two categorical data yes or no
k
set.seed(123)  # used to create random numbers that can be reproduced
sampling <- sample(2,nrow(k),replace = TRUE,
                   prob = c(0.8,0.2))
sampling

train<-k[sampling==1,] 
train 
test<-k[sampling==2,] 
test

# Decision Tree 
tree<-ctree(nativeSpeaker ~ age+shoeSize+score,data = train,  
            controls = ctree_control 
            (mincriterion = 0.90,  
              minsplit = 50))  

tree 
plot(tree) 

# prediction 
predict(tree,test,type="prob") 
predict(tree,test) 

# Decision Tree with rpart package 
install.packages("rpart")
library(rpart) 
tree1 <-rpart(nativeSpeaker ~ age+shoeSize+score, train) 
library(rpart.plot) 
rpart.plot(tree1) 
predict(tree1,test) 

# misclassification error for training data 
table <- table(predict(tree), train$nativeSpeaker) 
table 
# amount of misclassification error 
1-sum(diag(table)/sum(table)) 


# misclassification error for testing data 
predtest <-predict(tree,test) 
table <- table(predtest, test$nativeSpeaker) 
table 
# amount of misclassification error
1-sum(diag(table)/sum(table)) 


