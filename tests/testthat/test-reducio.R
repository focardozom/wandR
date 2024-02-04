test_that("reductio works", {

  df <- data.frame(
    "id" = c("1", "2", "3"),
    "A" = c("1", "2", "3"),
    "B" = c("1", "2", "3"),
    "C" = c("1", "2", "3")
      )

  expect_equal(
    pivot_longer(df, -id),
    reducio(df, -id)
  )
})


test_that("reductio works", {

  df <- data.frame(
    "id" = c("1", "2", "3"),
    "A" = c("1", "2", "3"),
    "B" = c("1", "2", "3"),
    "C" = c("1", "2", "3")
  )

  expect_equal(
    pivot_longer(df, -id),
    reducio(df, cols = c("A", "B", "C"))
  )
})

