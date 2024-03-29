<!-- badges: start -->
[![R-CMD-check](https://github.com/focardozom/wandR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/focardozom/wandR/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/focardozom/wandR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/focardozom/wandR?branch=main)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
<!-- badges: end -->

# wandR Package

The `wandR` package is designed to transform R learning into an entertaining journey for all, by weaving the magic of the wizarding world into R programming. Inspired by spells from the Harry Potter series, it presents a collection of functions tailored for educational purposes. With `wandR`, users engage in data manipulation through function names that echo the charm and whimsy of wizardry, thus making the mastery of essential data wrangling functions captivating and enjoyable.

## Installation

You can install `wandR` from GitHub with:

```r
# install.packages("devtools")
devtools::install_github("focardozom/wandR")
```

## Features

* `accio(.data, ...)`: Summons rows from a dataset that meet specified conditions.

* `transfiguro(.data, ...):` Transforms or adds new variables to a dataframe.

* `reducio(data, cols, names_to, values_to, ...):` Condenses wide data into a longer format.

* `engorgio(data, names_from, values_from, ...):` Spreads key-value pairs across multiple columns to widen data.

* `daily_prophet(.data, ...):` Generates summary statistics.

* `avada_kedavra(...):` Irreversibly removes objects from the environment, use with caution.

## Usage

Here's a quick example to get you started:

```r
library(wandR)

data(harry_potter_characters.rda)

# Use accio to filter rows
gryffindor_students <- accio(harry_potter_characters, house == "Gryffindor")

# Transform data with transfiguro
new_star_data <- transfiguro(harry_potter_characters, ID = nrow())
```

## Contributing

Contributions to `wandR` are welcome! Please read our [Contribution Guidelines](CONTRIBUTING.md) for details on how to submit pull requests, report issues, or request new features.

## License

`wandR` is released under the MIT License. See the [LICENSE](LICENSE.md) file for more details.

## Acknowledgements

The `wandR` package is a project that reimagines data manipulation and analysis in R through the whimsical lens of the Harry Potter universe. It offers a thematic interface to existing functions from well-established packages such as `dplyr` and `tidyr`, among others, by renaming them with spell-inspired names. This package is intended for educational and entertainment purposes, aiming to make data science more accessible and engaging.

We acknowledge the original authors and contributors of the `dplyr`, `tidyr`, and other packages that `wandR` draws upon. This package does not claim originality in functionality. All references to spells, characters, and the wizarding world are used with admiration and respect for the Harry Potter series created by J.K. Rowling.
 

