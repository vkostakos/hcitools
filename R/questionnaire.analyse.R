#' Analyse data from a standardised questionnaire
#' 
#' \code{questionnaires_analyse} will simply print out a standard questionnaire, 
#' and the citation for it.
#'
#' @param data A data frame containing questionnaire responses.
#' @param name The name of the questionaire. Can be 'SUS', 'Big5', etc.
#' @details The \code{data} must contain all the questions generated 
#' by \code{\link{questionnaire.show}} as columns in a data frame. The 
#' columns must be in the same order as in the questionnaire printed 
#' by \code{\link{questionnaire.show}}.
#' @return The analysis of the questionnaire
#' @examples 
#' require(hcitools)
#' data(data.SUSresponses)
#' questionnaire.analyse(data.SUSresponses,'SUS')
questionnaire.analyse <- function(data, name = c("SUS", "BFI10", "Big10")) {
  if (missing(name) | missing(data) | !is.character(name) | !is.data.frame(data)) {
    stop("The function expects a data frame and the name of the questionnaire")
  }
  switch(name, SUS = {
    names(data) <- c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10")
    data[, c("Q1", "Q3", "Q5", "Q7", "Q9")] <- data[, c("Q1", "Q3", "Q5", "Q7", "Q9")] - 1
    data[, c("Q2", "Q4", "Q6", "Q8", "Q10")] <- 5 - data[, c("Q2", "Q4", "Q6", "Q8", "Q10")]
    result <- mean(rowSums(data) * 2.5)
  }, BFI10 = {
    names(data) <- c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10")
    extraversion <-      ((6-data$Q1) + data$Q6)/2
    agreeableness <-     ((6-data$Q7) + data$Q2)/2
    conscientiousness <- ((6-data$Q3) + data$Q8)/2
    neuroticism <-       ((6-data$Q4) + data$Q9)/2
    openness <-          ((6-data$Q5) + data$Q10)/2
    result <- data.frame(extraversion,agreeableness,conscientiousness,neuroticism,openness)
  }, BFI44 = {
    names(data) <- c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10","Q11","Q12","Q13","Q14","Q15","Q16","Q17","Q18","Q19","Q20","Q21","Q22","Q23","Q24","Q25","Q26","Q27","Q28","Q29","Q30","Q31","Q32","Q33","Q34","Q35","Q36","Q37","Q38","Q39","Q40","Q41","Q42","Q43","Q44")
    extraversion <-      (data$Q1 + (6-data$Q6) + data$Q11 + data$Q16 + (6-data$Q21) + data$Q26 + (6-data$Q31) + data$Q36)/8
    agreeableness <-     ((6-data$Q2) + data$Q7 + (6-data$Q12) + data$Q17 + data$Q22 + (6-data$Q27) + data$Q32 + (6-data$Q37) + data$Q42)/9
    conscientiousness <- (data$Q3 + (6-data$Q8) + data$Q13 + (6-data$Q18) + (6-data$Q23) + data$Q28 + data$Q33 + data$Q38 + (6-data$Q43))/9
    neuroticism <-       (data$Q4 + (6-data$Q9) + data$Q14 + data$Q19 + (6-data$Q24) + data$Q29 + (6-data$Q34) + data$Q39)/8
    openness <-          (data$Q5 + data$Q10 + data$Q15 + data$Q20 + data$Q25 + data$Q30 + (6-data$Q35) + data$Q40 + (6-data$Q41) + data$Q44)/10
    result <- data.frame(extraversion,agreeableness,conscientiousness,neuroticism,openness)
  }, stop("The questionnaire name is not recognised"))
  return(result)
} 
