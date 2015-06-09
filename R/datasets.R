#' SUS dataset
#'
#' A sample dataset containing SUS questionnaire responses.
#'
#' @name data.SUSresponses
#' @docType data
#'
#' @usage data(data.SUSresponses)
#'
#' @format Contains 45 survey responses (in rows) to the 10-point SUS questionnaire.
#'
#' @keywords datasets
#'
#' @examples
#' data(data.SUSresponses)
#' questionnaire.analyse(data.SUSresponses,"SUS")
NULL



#' BFI10 dataset
#'
#' A sample dataset containing SUS questionnaire responses.
#'
#' @name data.BFI10responses
#' @docType data
#'
#' @usage data(data.BFI10responses)
#'
#' @format Contains 45 survey responses (in rows) to the 10-point Big5 questionnaire.
#'
#' @keywords datasets
#'
#' @examples
#' data(data.BFI10responses)
#' questionnaire.analyse(data.BFI10responses,"BFI10")
NULL

#' BFI44 dataset
#'
#' A sample dataset containing SUS questionnaire responses.
#'
#' @name data.BFI44responses
#' @docType data
#'
#' @usage data(data.BFI44responses)
#'
#' @format Contains 45 survey responses (in rows) to the 44-point Big5 questionnaire.
#'
#' @keywords datasets
#'
#' @examples
#' data(data.BFI44responses)
#' questionnaire.analyse(data.BFI44responses,"BFI44")
NULL

#' Phsychiatric Diagnoses dataset 
#'
#' Psychiatric diagnoses of n=30 patients provided by different sets of m=6 raters. Data were used by Fleiss (1971) to illustrate the computation of Kappa for m raters.
#'
#' @name data.Diagnoses
#' @docType data
#'
#' @usage data(data.Diagnoses)
#'
#' @format A data frame with 30 observations (psychiatric diagnoses with levels 1. Depression, 2. Personality Disorder, 3. Schizophrenia, 4. Neurosis, 5. Other) on 6 variables representing different raters.
#'
#' @references
#' Fleiss, J.L. (1971). Measuring nominal scale agreement among many raters. Psychological Bulletin, 76, 378-382.
#' 
#' @keywords datasets
#'
#' @examples
#' data(data.Diagnoses)
#' interrater.reliability(data.Diagnoses[,1:2],type="categorical")
NULL


#' Anxiety ratings by different raters 
#'
#' The data frame contains the anxiety ratings of 20 subjects, rated by 3 raters. Values are ranging from 1 (not anxious at all) to 6 (extremely anxious).
#'
#' @name data.Anxiety
#' @docType data
#'
#' @usage data(data.Anxiety)
#'
#' @format A data frame with 30 observations (psychiatric diagnoses with levels 1. Depression, 2. Personality Disorder, 3. Schizophrenia, 4. Neurosis, 5. Other) on 6 variables representing different raters.
#'
#' @source
#' Artificial data
#' 
#' @keywords datasets
#'
#' @examples
#' data(data.Anxiety)
#' data.Anxiety
NULL

