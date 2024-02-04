
test_that("transfiguro adds a new column correctly", {

  sample_data <- tibble(
    x = 1:5,
    y = c(2, 4, 6, 8, 10)
  )

  transformed_data <- transfiguro(sample_data, z = x + y)

  expect_true("z" %in% names(transformed_data))
  expect_equal(transformed_data$z, c(3, 6, 9, 12, 15))

  # Optionally, check the structure of the transformed data to ensure it matches expectations
  expect_equal(colnames(transformed_data), c("x", "y", "z"))
})


