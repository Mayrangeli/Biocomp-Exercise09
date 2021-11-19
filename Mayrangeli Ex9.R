#Execersise 9

#Setting Working Directory 
setwd(("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise09"))

#Write a function that takes a directory name as an argument called 
###dir plus any other arguments requried to
###accomplish the specified task.

#The function should read data from each file in the specified directory 
###and calculate the coefficient of variation
###(standard deviation divided by the mean) for a user specified column. 
###These values should be returned as a vector.

#Make your function, by default, report an 
###error if any file has less than 50 observations, but allow the user
#to override this behavior and only receive a warningif 50
#observations are not present in a file.


#For an extra credit point, add arguments and associated code to 
### function to situations where a file
###doesn't have the correct number of columns or the provided data
###includes NA's.

#Creating a funtion to us a a new variable

myFiles <- function(dir,num) {
  getwd()
  setwd(dir)
  #Concatinate files to varible
  newFiles<-list.files("*.csv")
  FilesView<-c() #New files View
  #And I start loop
  if(num=nrow(newFiles)){
    if(newFiles[newFiles=="NA",]){ 
      print("File has missing data NA")
    }else{
        #Calculating CV for files with files with more than 50 observations
      if(length(newFiles[,num])>50){
        cv<-(sd(newFiles[,num])/mean(newFiles[,num]))*100
      }
      #Creting vector for CV
      calculationsCV<-c(cv,num)
      }
  }else{
    #Getting a message that we are missing numbers
    print("Missing Columns in file")
    
    break
  }
  return(calculationsCV)
}#END LOOP
