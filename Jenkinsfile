pipeline {
     agent any
     environment {
           def myString = "Hello world"
           def myNumber = 10
           def myBool = true
     }
     stages{
       stage("clean up"){
         steps{
           deleteDir()        
         }
       
       }
       stage("clone the git  repo."){
          steps{
              sh "git clone https://github.com/ChaitaliP2001/django-todo-cicd.git"
          }  
       }
       stage("Demo"){
         steps{
           {
             echo "myString : $(myString)"
           }
         }
       }    
       
      
     }
}
