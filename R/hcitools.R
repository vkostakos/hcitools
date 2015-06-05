#' Print a version of a standardised questionnaire
#' 
#' \code{questionnaire_show} will simply print out a standard questionnaire, 
#' and the citation for it
#'
#' @param name the name of the questionaire. Can be 'SUS', 'Big5', etc.
#' @return Prints instructions, the questionnaire in plain text, and a citation.
#' @examples 
#' questionnaire_show('SUS')
questionnaire_show <- function(name = c("SUS", "Big5", "Big10")) {
    if (missing(name) | !is.character(name)) {
        stop("The function expects the name of the questionnaire")
    }
    switch(name, SUS = {
        cat(" \nIntructions: Rate the following statements on a scale 1 to 5\n(1: Strongly disagree, 5: Strongly agree)\n\n1. I think that I would like to use this system frequently.\n2. I found the system unnecessarily complex.\n3. I thought the system was easy to use.\n4. I think that I would need the support of a technical person to be able to use this system.\n5. I found the various functions in this system were well integrated.\n6. I thought there was too much inconsistency in this system.\n7. I would imagine that most people would learn to use this system very quickly.\n8. I found the system very cumbersome to use.\n9. I felt very confident using the system.\n10. I needed to learn a lot of things before I could get going with this system.\n\nReference:\nBrooke, J. (1986). SUS: a quick and dirty usability scale. In P. W. Jordan, B. Thomas, B. A. Weerdmeester, & A. L. McClelland. Usability Evaluation in Industry. London: Taylor and Francis.\n ")
    }, Big5 = {
        cat("This is Big5")
    }, stop("The questionnaire name is not recognised"))
}



#' Analyse data from a standardised questionnaire
#' 
#' \code{questionnaires_analyse} will simply print out a standard questionnaire, 
#' and the citation for it.
#'
#' @param data A data frame containing questionnaire responses.
#' @param name The name of the questionaire. Can be 'SUS', 'Big5', etc.
#' @details The \code{data} must contain all the questions generated 
#' by \code{\link{questionnaire_show}} as columns in a data frame. The 
#' columns must be in the same order as in the questionnaire printed 
#' by \code{\link{questionnaire_show}}.
#' @return The analysis of the questionnaire
#' @examples 
#' require(hcitools)
#' data(SUSresponses)
#' questionnaire_analyse(SUSresponses,'SUS')
questionnaire_analyse <- function(data, name = c("SUS", "Big5", "Big10")) {
    if (missing(name) | missing(data) | !is.character(name) | !is.data.frame(data)) {
        stop("The function expects a data frame and the name of the questionnaire")
    }
    switch(name, SUS = {
        names(data) <- c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10 ")
        data[, c("Q1", "Q3", "Q5", "Q7", "Q9")] <- data[, c("Q1", "Q3", "Q5", "Q7", "Q9")] - 
            1
        data[, c("Q2", "Q4", "Q6", "Q8", "Q10")] <- 5 - data[, c("Q2", "Q4", "Q6", "Q8", 
            "Q10")]
        result <- mean(rowSums(data) * 2.5)
    }, Big5 = {
        result <- "This is Big5"
    }, stop("The questionnaire name is not recognised"))
    return(result)
} 
