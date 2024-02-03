# `wandR` Package

The `wandR` package brings the magic of the wizarding world into the realm of R data analysis, offering a collection of functions inspired by spells from the Harry Potter series. With `wandR`, you can perform data manipulation and analysis tasks using function names that evoke the charm and whimsy of wizardry. From summoning specific rows with `accio` to transforming data frames with `transfiguro`, `wandR` makes data analysis an enchanting experience.

## Installation

You can install the released version of `wandR` from GitHub with:

```r
# install.packages("devtools")
devtools::install_github("focardozom/wandR")
```

## Features

* `accio(.data, ...)`: Summons rows from a dataset that meet specified conditions, akin to the Summoning Charm.

* `transfiguro(.data, ...):` Transforms or adds new variables to a dataframe, inspired by the art of Transfiguration.

* `propheto(.data, ...):` Generates summary statistics, mirroring the prophetic insights of the Daily Prophet.

* `reducio(data, cols, names_to, values_to, ...):` Condenses wide data into a longer format, drawing inspiration from the Reducio spell.

* `engorgio(data, names_from, values_from, ...):` Spreads key-value pairs across multiple columns to widen data, similar to the Engorgio charm.
* `avada_kedavra(...):` Irreversibly removes objects from the environment, use with caution.

## Usage

Here's a quick example to get you started:

```r
Copy code
library(wandR)

# Example dataset
HP_charter_data <- tibble(
  name = c("Harry", "Hermione", "Ron"),
  house = c("Gryffindor", "Gryffindor", "Gryffindor"),
  year = c(1, 1, 1)
)

# Use accio to filter rows
gryffindor_students <- accio(HP_charter_data, house == "Gryffindor")

# Transform data with transfiguro
new_star_data <- transfiguro(HP_charter_data, next_year = year + 1)
```

## Contributing

Contributions to `wandR` are welcome! Please read our [Contribution Guidelines]() for details on how to submit pull requests, report issues, or request new features.

## License

`wandR` is released under the MIT License. See the [LICENSE]() file for more details.

## Acknowledgements

The `wandR` package is a creative project that reimagines data manipulation and analysis in R through the whimsical lens of the Harry Potter universe. It primarily offers a new, thematic interface to existing functions from well-established packages such as `dplyr` and `tidyr`, among others, by renaming them with spell-inspired names. This package is intended for educational and entertainment purposes, aiming to make data science more accessible and engaging.

We acknowledge the original authors and contributors of the `dplyr`, `tidyr`, and other CRAN packages that `wandR` draws upon. This package does not claim originality in functionality. All references to spells, characters, and the wizarding world are used with admiration and respect for the Harry Potter series created by J.K. Rowling.
 

