#' Conduct interrater reliability tests.
#' 
#' \code{interrater.reliability} will perform some basic heuristics to determine which test to run on your data.
#'
#' @param d the dataset that you want to analyse. Should contain one column per rater.
#' @param type indicates whether the data to be analysed is categorical or ordinal. If type is ordinal then weights are used. Make sure that for ordinal data the factors are set in the correct order. Use \code{levels(d)} to see the factor levels of your variable
#' @return The results of the test, along with details of the analysis
#' @examples 
#' data(data.Diagnoses)
#' interrater.reliability(data.Diagnoses[,1:2],type="categorical")
interrater.reliability <- function(d, type = c("categorical", "ordinal") ) {
  
  result <- NULL
  if(type=="categorical"){
    #We are dealing with categorical data  
    if(ncol(d) == 2){
      #We only have two raters & categorical data
      result <- irr::kappa2(d, "unweighted")
    }
    if(ncol(d) > 2){
      result <- irr::kappam.fleiss(d)
    }
  }
    
  if(type=="ordinal"){
    if(ncol(d) == 2){
      result <- irr::kappa2(d, "squared")
    }
    if(ncol(d) > 2){
      result <- "Do not know how to deal with this data"
    }
  }
  
  return(result)
  
}
