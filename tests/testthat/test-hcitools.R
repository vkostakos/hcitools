library(hcitools)
data(data.SUSresponses)
data(data.BFI10responses)
data(data.BFI44responses)

test_that("questionnaire_analyse rejects invalid input", {
  expect_error(questionnaire.analyse())
  expect_error(questionnaire.analyse(1))
  expect_error(questionnaire.analyse(1,2))
  expect_error(questionnaire.analyse(data.SUSresponses))
  expect_error(questionnaire.analyse(data.SUSresponses,2))  
})

test_that("questionnaire_analyse gives correct results", {
  expect_equal(questionnaire.analyse(data.SUSresponses,"SUS"),50.1111, tolerance=1e-3)
  expect_equal(mean(questionnaire.analyse(data.BFI10responses,'BFI10')$agreeableness),2.688889, tolerance=1e-6)
  expect_equal(mean(questionnaire.analyse(data.BFI44responses,"BFI44")$agreeableness),3.049383, tolerance=1e-6)
})
