rankall <-function(outcome,num = "best"){ 
   statefile <- read.csv("D:/R_Programming/Week4/outcome-of-care-measures.csv", colClasses = "character",na.strings="Not Available") 
   statevector<- sort(unique(statefile[,"State"]))
   output <- data.frame() 
   for (state in statevector){ 
     NewState <- state 
     NewNum <- num 
     NewOutCome <- outcome 
     hospital  <- rankhospital(NewState,NewOutCome,NewNum) 
     NewRankout <- cbind(hospital,state) 
     output <-rbind(output,NewRankout) 
   } 
   return(output) 
}
