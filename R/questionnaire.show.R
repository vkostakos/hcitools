#' Print a version of a standardised questionnaire
#' 
#' \code{questionnaire.show} will print out a standard questionnaire, basic instructions, 
#' and the citation for it.
#'
#' @param name the name of the questionaire. Can be 'SUS', 'Big5', etc.
#' @return Prints instructions, the questionnaire in plain text, and a citation.
#' @examples 
#' questionnaire.show('SUS')
questionnaire.show <- function(name = c("SUS", "BFI10", "BFI44")) {
  if (missing(name) | !is.character(name)) {
    stop("The function expects the name of the questionnaire")
  }
  switch(name, SUS = {
    cat("
Intructions: Rate the following statements on a scale 1 to 5
(1: Strongly disagree, 5: Strongly agree)

    1. I think that I would like to use this system frequently.
    2. I found the system unnecessarily complex.
    3. I thought the system was easy to use.
    4. I think that I would need the support of a technical person to be able to use this system.
    5. I found the various functions in this system were well integrated.
    6. I thought there was too much inconsistency in this system.
    7. I would imagine that most people would learn to use this system very quickly.
    8. I found the system very cumbersome to use.
    9. I felt very confident using the system.
    10. I needed to learn a lot of things before I could get going with this system.
        
Scoring: To calculate the SUS score, first sum the score contributions from each item. Each item's score contribution will range from 0 to 4. For items 1,3,5,7,and 9 the score contribution is the scale position minus 1. For items 2,4,6,8 and 10, the contribution is 5 minus the scale position. Multiply the sum of the scores by 2.5 to obtain the overall value of SU between 0-100. 

Reference: Brooke, J. (1986). SUS: a quick and dirty usability scale. In P. W. Jordan, B. Thomas, B. A. Weerdmeester, & A. L. McClelland. Usability Evaluation in Industry. London: Taylor and Francis.\n ")
  }, BFI10 = {
    cat("
Instructions: How well do the following statements describe your personality
(1: Disagree strongly, 2: Disagree a little, 3: Neither agree nor disagree, 4: Agree a little, 5: Agree strongly).
        
        I see myself as someone who ...
        
        1. ... is reserved
        2. ... is generally trusting
        3. ... tends to be lazy
        4. ... is relaxed, handles stress well
        5. ... has few artistic interests
        6. ... is outgoing, sociable
        7. ... tends to find fault with others
        8. ... does a thorough job
        9. ... gets nervous easily
        10. ... has an active imagination
        
Scoring (R means items is reversed-scored):
-Extraversion: 1R, 6
-Agreeableness: 2, 7R
-Conscientiousness: 3R, 8
-Neuroticism: 4R, 9
-Openness: 5R, 10
        
Reference: Rammstedt, B. & John, O. P. (2007). Measuring personality in one minute or less: A 10-item short version of the Big Five Inventory in English and German. Journal of Research in Personality, 41, 203-212.")
  }, BFI44 = {
    cat ("
Here are a number of characteristics that may or may not apply to you. For example, do you agree that you are someone who likes to spend time with others? Please write a number next to each statement to indicate the extent to which you agree or disagree with that statement. 
(1: Disagree strongly, 2: Disagree a little, 3: Neither agree nor disagree, 4: Agree a little, 5: Agree strongly)
         
         I see Myself as Someone Who...
         ____1. Is talkative
         ____2. Tends to find fault with others
         ____3. Does a thorough job
         ____4. Is depressed, blue
         ____5. Is original, comes up with new ideas 
         ____6. Is reserved
         ____7. Is helpful and unselfish with others 
         ____8. Can be somewhat careless
         ____9. Is relaxed, handles stress well
         ____10. Is curious about many different things
         ____11. Is full of energy
         ____12. Starts quarrels with others 
         ____13. Is a reliable worker
         ____14. Can be tense
         ____15. Is ingenious, a deep thinker 
         ____16. Generates a lot of enthusiasm
         ____17. Has a forgiving nature
         ____18. Tends to be disorganized 
         ____19. Worries a lot
         ____20. Has an active imagination 
         ____21. Tends to be quiet
         ____22. Is generally trusting
         ____23. Tends to be lazy
         ____24. Is emotionally stable, not easily upset
         ____25. Is inventive
         ____26. Has an assertive personality
         ____27. Can be cold and aloof
         ____28. Perseveres until the task is finished
         ____29. Can be moody
         ____30. Values artistic, aesthetic experiences
         ____31. Is sometimes shy, inhibited
         ____32. Is considerate and kind to almost everyone
         ____33. Does things efficiently
         ____34. Remains calm in tense situations
         ____35. Prefers work that is routine
         ____36. Is outgoing, sociable
         ____37. Is sometimes rude to others
         ____38. Makes plans and follows through with them
         ____39. Gets nervous easily
         ____40. Likes to reflect, play with ideas 
         ____41. Has few artistic interests
         ____42. Likes to cooperate with others
         ____43. Is easily distracted
         ____44. Is sophisticated in art, music, or literature
         
Scoring (R denotes revers-scored items):
-Extraversion: 1, 6R, 11, 16, 21R, 26, 31R, 36 
-Agreeableness: 2R, 7, 12R, 17, 22, 27R, 32, 37R, 42 
-Conscientiousness: 3, 8R, 13, 18R, 23R, 28, 33, 38, 43R 
-Neuroticism: 4, 9R, 14, 19, 24R, 29, 34R, 39
-Openness: 5, 10, 15, 20, 25, 30, 35R, 40, 41R, 44

Reference: John, O. P., & Srivastava, S. (1999). The Big-Five trait taxonomy: History, measurement, and theoretical perspectives. In L. A. Pervin & O. P. John (Eds.), Handbook of personality: Theory and research (Vol. 2, pp. 102-138). New York: Guilford Press.")
  }, stop("The questionnaire name is not recognised"))
  }



