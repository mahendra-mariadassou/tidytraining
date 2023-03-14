
<!-- README.md is generated from README.Rmd. Please edit that file -->

# migale tidyverse training

The goal of this package is to provide interactive tutorials for the
tidyverse training module. The tutorial are shamelessly taken from
[rstudio-education](https://rstudio.cloud/learn/primers) for the basics
of R and the tidyverse. Tutorials are packaged so you can install them
on you computer and do the exercices without access to an internet
connection.

## Installation

### Installing R and other dependencies

You only need to perform each of the following steps **once**:

- installing **R**
- installing **Rstudio**
- installing **R** packages `remotes` and `learnr`

However each of them may take some time.

#### Installing R

Go to the CRAN [webpage](https://cran.r-project.org/), select your OS
and follow the instructions.

- On Windows, you should just download and execute an .exe file.
- On MacOS, you should just download and execute a .pkg file.
- On Linux, you can get install R from the command line using something
  like

``` bash
## If you're on Ubuntu
sudo apt-get install r-base
```

#### Installing RStudio Desktop

Go to the
[download](https://rstudio.com/products/rstudio/download/#download)
page. Select, download and install the file corresponding to your OS.

#### Installing R packages

Launch Rstudio (by clicking on the corresponding icon) and execute the
following commands in the console

``` r
install.packages("remotes") 
install.packages("learnr") 
```

On **Windows**: you may need **Rtools** and **git**

- **Rtools**: visit the dedicated
  [page](https://cran.r-project.org/bin/windows/Rtools/), download the
  suggested exe and install it on your computer
- **git**: visit the dedicated [page](https://git-scm.com/download/win),
  download the suggested exe and install it on your computer

On **MacOS**: you may need **XCode**

- **XCode**: visit the dedicated
  [page](https://mac.r-project.org/tools/), download the **Mandatory
  tools** and install them on your computer

## Installing the tutorials

You need to install the tutorials **every time** there is an update
(hopefully not too often)

### Installing the tutorials for the first time

You can install the tutorials from [GitHub](https://github.com/) by
launching Rstudio and typing the following command in the console:

``` r
remotes::install_github("mahendra-mariadassou/tidytraining")
```

### Updating the tutorials

Whenever we fix a bug / typo or add new content, you need to update the
tutorials on your computer. To do so, start a fresh Rstudio session and
type the following command in the console:

``` r
remotes::install_github("mahendra-mariadassou/tidytraining")
```

## Starting a tutorial

This package is intended for use with `learnr`:

``` r
library(learnr)
```

You should only launch **one** tutorial at the time. Before launching a
new tutorial, **restart R**.

### Basics of programmings

``` r
## Launch only one tutorial at the time!!
learnr::run_tutorial("01_programming_basics", package = "tidytraining")
learnr::run_tutorial("02_visualisation_basics", package = "tidytraining")
```

## Data manipulation

``` r
learnr::run_tutorial("03.1_tibbles", package = "tidytraining")
learnr::run_tutorial("03.2_isolating_data", package = "tidytraining")
learnr::run_tutorial("03.3_summaries", package = "tidytraining")
```

## Tidy data

``` r
learnr::run_tutorial("04.1_reshape_data", package = "tidytraining")
learnr::run_tutorial("04.2_separate_columns", package = "tidytraining")
learnr::run_tutorial("04.3_join_datasets", package = "tidytraining")
```

## Troubleshooting

If you have an error when launching a vignette (it may happen on Windows
with R 4.0.0), try this syntax (illustrated on the first vignette):

``` r
rmarkdown::run(file = NULL, 
               dir = learnr:::get_tutorial_path("01_programming_basics",  
                                                package = "tidytraining"), 
               shiny_args = list(launch.browser = 1))
```
