# HDAT9800 Visualisation and Communication of Health Data `learnr` tutorials package

This repo contains interactive `learnr` tutorials for the Masters of Science in Health Data Science course HDAT9800  **Visualisation and Communication of Health Data** delivered by the Centre for Big Data Resaerch in Health, UNSW Sydney Faculty of Medicine and Health.

## Tutorial files

The learnr tutorial files can be found in the subfolder `inst/tutorials`. Long file names caused errors so the tutorials are organised under their respective course chapters.

## Notes on the tutorial folder structure

* Each tutorial has it's own `data`, `images` and `css` subfolders containing any data/images/css code relevant to that tutorial. 
* The `rsconnect` subfolder contains files related to the deployment of tutorials online via shinyapps.io. Generally, we won't have to edit any files in these folders.

## Updating tutorials

Below is a general workflow for updating tutorials.

0. If not done already, clone the entire package repo to your local computer. 
1. If necessary, use the git tab to `pull` any remote updates to your local computer.
2. Make changes in the tutorial .rmd file.
3. Run the .rmd file to make sure you are happy with your changes, and to update the corresponding .html file.
4. Use Git to `add` and `commit` your changes. 
5. When you are ready, use Git to `push` your changes to the remote repo.

## Notes on the package
* The package name is `hdat9800tutorials`
* The functions `chapter2()`, `chapter3()` etc launch the learnr tutorials in an interactive session.
* The file `R/functions.R` contains code to map the learnr tutorials to the correct chapter number function. For example, the first block of code maps the tutorial `ch2` to the function `chapter2()`. This makes it simple to re-order the chapters as required.
* The file `R/zzz.R` contains a list of quotes, one of which is displayed at random on the screen when the package is loaded. 

## A note on data shipped with the package 
* The folder `inst/extdata` contains a second copy of the data files used across all tutorials. This allows students to access the data within R/RStudio without launching the learnr tutorial (provided they have the package installed). 
* For example, the following code could be used within R Studio to read the file `yrs2015.csv`: `data <- read.csv(system.file("extdata", "yrs2015.csv", package="hdat9800tutorials"))`
