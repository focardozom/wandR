
test_that("daily_prophet accurately summarizes data", {

  df <- tibble(
    group = c("A", "A", "B", "B", "C"),
    value = c(1, 2, 3, 4, 5)
  )

  # Use daily_prophet to summarize the data
  summarized_data <- daily_prophet(df, avg_value = mean(value), total = n())

  # Check if the summarization is correct
  expected_data <- tibble(
    avg_value = 3,
    total = 5
  )
  expect_equal(summarized_data, expected_data)

  # Optionally, verify the structure and column names of the summary
  expect_equal(colnames(summarized_data), c("avg_value", "total"))
})




test_that("daily_prophet accurately summarizes data", {
  # Create a sample dataset
  df <- tibble(
    group = c("A", "A", "B", "B", "C"),
    value = c(1, 2, 3, 4, 5)
  )

  # Use daily_prophet to summarize the data
  summarized_data <- daily_prophet(df, avg_value = mean(value), total = n(),
                                   .by=group)

  # Check if the summarization is correct
  expected_data <- tibble(
    group = c("A", "B", "C"),
    avg_value = c(1.5, 3.5, 5),
    total = c(2, 2, 1)
  )
  expect_equal(summarized_data, expected_data)

  # Optionally, verify the structure and column names of the summary
  expect_equal(colnames(summarized_data), c("group", "avg_value", "total"))
})


