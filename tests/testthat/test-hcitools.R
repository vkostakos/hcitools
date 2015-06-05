library(hcitools)
data(SUSresponses)

test_that("questionnaire_analyse rejects invalid input", {
  expect_error(questionnaire_analyse())
  expect_error(questionnaire_analyse(1))
  expect_error(questionnaire_analyse(1,2))
  expect_error(questionnaire_analyse(SUSresponses))
  expect_error(questionnaire_analyse(SUSresponses,2))  
})

test_that("questionnaire_analyse gives correct SUS results", {
  expect_equal(questionnaire_analyse(SUSresponses,"SUS"),50.1111, tolerance=1e-3)
})
