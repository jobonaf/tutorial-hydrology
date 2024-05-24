# tutorialhydrology

R tutorials for the **6th Workshop on Water Resources in Developing Countries** at ICTP in Trieste, Italy.

You have three options to complete the tutorials. Regardless of the method you choose, you are expected to achieve the specified goals. Options 2 and 3 offer opportunities to delve deeper into the topics by working with the datasets in your own R scripts.

## Goals

1. **First steps in R**
   - Simple operations
   - Functions
   - Assignment
   - Packages
2. **A small hydrological sporadic dataset**
   - Read from XLS
   - Exploring it with basic functions
3. **A larger hydrological sporadic dataset**
   - Exploring it with package `dplyr`
4. **Plotting with package `ggplot2`**
   - Time series
   - Facets
   - Box and whiskers plots
   - Scatter plots
   - Fit a curve
5. **Reshaping the data with package `tidyr`**
   - Long and wide tables
6. **Fitting rating curves**
   - Preliminary analysis
   - Package `bdrc`
   - Compare the rating curves
7. **Stage hourly time series**
   - Percentiles
   - Annual and daily courses
   - Changepoints detection
8. **Estimating discharge with the rating curves**

## Option 1: Do the Tutorials Online

You can interactively engage with the tutorials directly in your browser without needing to download anything. This option is ideal for beginners.

1. [Introduction to R and to the hydrological data](https://jobonaf.shinyapps.io/tutorialhydrology-intro/)
2. [Plot the hydrological data](https://jobonaf.shinyapps.io/tutorialhydrology-plot/)
3. [Fit the rating curve](https://jobonaf.shinyapps.io/tutorialhydrology-fit/)
4. [Estimate the discharge using the fitted rating curve](https://jobonaf.shinyapps.io/tutorialhydrology-estimate/)

## Option 2: Install the Package and Do the Tutorials Locally

You can install the R package `tutorialhydrology` and run the tutorials locally in your RStudio session. This is recommended for those who are familiar with R or are keen to learn it.

### Requirements

- R (≥ 3.5.2)
- RStudio
- R packages:
  - **Mandatory**: `shiny` (≥ 1.6.0), `learnr`, `readxl`, `dplyr`, `ggplot2`, `tidyr`, `lubridate`, `bdrc`, `changepoint`
  - **Recommended**: `readr`, `remotes`

You can install R packages directly from within R/RStudio with `install.packages(<package-name>)`. To check if they are already installed and available, use `library(<package-name>)`.

### Instructions

Install the R package, load it and launch the tutorials.
```r
library(learnr)
library(remotes)
install_github("jobonaf/tutorialhydrology")
library(tutorialhydrology)
run_tutorial(package = "tutorialhydrology", name = "intro")
run_tutorial(package = "tutorialhydrology", name = "plot")
run_tutorial(package = "tutorialhydrology", name = "fit")
run_tutorial(package = "tutorialhydrology", name = "estimate")
```

## Option 3: Clone the Repository and Do the Tutorials Locally

You can also clone the repository `tutorialhydrology` from GitHub, build the package and then run the tutorials locally. This option is only possible for advanced R users.

### Requirements

The same as option 2, plus `git`.

### Instructions

1. **Clone from GitHub**
   - Use the command `git clone https://github.com/jobonaf/tutorialhydrology.git` in your shell, or
   - In RStudio: _File > New Project > Version Control > Git_, or
   - From [GitHub](https://github.com/jobonaf/tutorialhydrology): click _Code > Download ZIP_, then unzip the folder and create a new RStudio project in it with _File > New Project > Existing Directory_.
2. **Open the new RStudio project** and use the _Build_ button to build the package.
3. **Navigate the tutorials** in the _Tutorial_ pane and launch the one you are interested in.
4. If you want, you can modify them in the folder `inst/tutorials` and rebuild the package.


## Work with the Datasets

If you choose options 2 or 3, you can view the dataset descriptions with the command
```r
help(tutorialhydrology)
```
The package contains three datasets, accessible with the command `data(<dataset-name>)`:

- **hourly_n105**: Hourly stage data at station N105. A data frame with 176034 rows and 2 columns:
  - `datetime`: Time of observation
  - `H`: Stage level (m)
- **obs_discharge**: Observed hydrological data. A data frame with 9768 rows and 20 columns:
  - _Variable, Unit, Value, IdMeasure, Date, TimeStart, TimeEnd, NoBranches_ (Number of river's branches at the time of the measure), Instrument, Method, NotesMeasure, StationCode, Municipality, Province, Location, River, Basin, SubBasin, Description, NotesStation.
  - Includes variables measured in 19 stations: `T_water`, `H`, `H_bridge`, `H_rod`, `H_select`, `Q`, `section_area`, `section_width`, `depth_ave`, `depth_max`, `speed_ave`, `speed_max`.
- **obs_n105**: Observed discharge data at station N105 (Torre river in Tarcento). A data frame with 29 rows and 4 columns:
  - `TimeStart`: Begin of sampling time
  - `StationCode`: ID of the station
  - `H`: Stage level (cm)
  - `Q`: River discharge ($m^3/s$)
  
These datasets allow you to write your own scripts and perform further analyses. Enjoy exploring!

---

## Addendum: Publish Your Own Tutorial

To deploy/publish a tutorial on your shinyapps.io account, use the _Publish_ button provided by the package `rsconnect` in RStudio. Alternatively, in an R session, try the following code:
```r
rsconnect::setAccountInfo(
  name='<your-username>',
  token='<your-token>',
  secret='<your-secret>'
)
rsconnect::deployDoc(
  doc="<path-to-Rmd-file>",
  appName="<short-name>",
  appTitle="<webpage-title>"
)
```
