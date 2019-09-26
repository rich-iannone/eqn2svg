test_that("SVG conversion works", {

  svg_text <- eqn2svg(eqn = l_time_domain[25], preview = FALSE)

  expect_match(svg_text, "^  <svg style.*")
  expect_match(svg_text, ".*</path></g></g></g></g></svg>$")
})
