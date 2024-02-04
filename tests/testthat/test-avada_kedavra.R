test_that("avada_kedavra removes objects from the global environment", {

  obj1 <- "I am going to be removed"; assign("obj1", obj1, envir = .GlobalEnv)
  obj2 <- "Me too"; assign("obj2", obj2, envir = .GlobalEnv)


  expect_true(exists("obj1", envir = .GlobalEnv))
  expect_true(exists("obj2", envir = .GlobalEnv))

  avada_kedavra("obj1", "obj2")

  expect_false(exists("obj1", envir = .GlobalEnv))
  expect_false(exists("obj2", envir = .GlobalEnv))
})
