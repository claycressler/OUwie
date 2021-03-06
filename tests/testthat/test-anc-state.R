context("test-anc-state.R")

test_that("ancestral state estimation works", {
    skip_on_cran()
  data("tworegime")
  fitted <- OUwie(tree,trait,model=c("OUMV"),root.station=TRUE)
  recon <- OUwie.anc(fitted, knowledge=TRUE)
  expect_s3_class(recon, "OUwie.anc")
})
