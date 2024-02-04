test_that("Filter works", {
  df <- data.frame("letters" = c("A", "B","C"))

  expect_equal(accio(df, letters=="A") |> pull(letters), "A")

})
