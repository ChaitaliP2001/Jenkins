pipeline {
     agent any
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
       stage("Build"){
         steps{
           dir("django-todo-cicd"){
             sh "mvn  clean install"
           }
         }
       }    
        stage("Test"){
         steps(){
           dir("django-todo-cicd"){
              sh "mvn test"
           }
         }
        } 
      
     }
}
