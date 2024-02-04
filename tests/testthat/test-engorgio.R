test_that("Engorgio works", {

  df <- data.frame(
    "id" = rep(c("1", "2", "3"),3),
    "letters" = c(rep("A",3),rep("B",3), rep("C",3)),
    "numbers" = rep(c(1, 2, 3),3)
  )

  expect_equal(
    df |>
      pivot_wider(names_from = letters, values_from = numbers),
    engorgio(df, names_from = "letters", values_from = "numbers")
  )

})


test_that("Engorgio works", {

  df <- data.frame(
    "id" = rep(c("1", "2", "3"),3),
    "letters" = c(rep("A",3),rep("B",3), rep("C",3)),
    "numbers" = rep(c(1, 2, 3),3)
  )

  expect_equal(
    df |>
      pivot_wider(names_from = letters, values_from = numbers),
      engorgio(df, names_from = letters, values_from = numbers)
  )

})

