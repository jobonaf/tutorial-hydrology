# tutorialhydrology
R tutorials for the __6th Workshop on Water Resources in Developing Countries__ at ICTP in Trieste, Italy.

### tutorials online
You can play with the tutorials interactively in your browser without downloading anything:

1. __introduction__ to R and to the hydrological data: https://jobonaf.shinyapps.io/tutorialhydrology-intro/
2. __plot__ the hydrological data: https://jobonaf.shinyapps.io/tutorialhydrology-plot/
3. __fit__ the rating curve: https://jobonaf.shinyapps.io/tutorialhydrology-fit/
4. __estimate__ the discharge using the fitted rating curve: https://jobonaf.shinyapps.io/tutorialhydrology-estimate/

### run locally
You can also download the tutorials and run them locally in your R/Rstudio session.

#### requirements

- R ($\ge$ 3.5.2)
- RStudio
- R packages*
  - _mandatory_: shiny ($\ge$ 1.6.0), learnr, readxl, dplyr, ggplot2, bdrc
  - _recommended_: tidyr, readr, lubridate, remote
  
*) You can install R packages directly from within R/RStudio with `install.packages(<package-name>)`. To check if they are already installed and available, use `library(<package-name>)`

#### instructions

- clone from GitHub
  - with command `git clone https://github.com/jobonaf/tutorialhydrology.git` in your shell, or 
  - in RStudio with _File | New project | Version control | Git_, or
  - from https://github.com/jobonaf/tutorialhydrology click _Code | Download ZIP_, then unzip the folder and create a new R project into it, with _File | New project | Existing directory_
- open the new RStudio project and use the _Build_ button to build the package
- navigate the tutorials in the _Tutorial_ pane and launch the one you are interested in
- if you want, you can modify them in the folder `inst/tutorials` and rebuild the package

### publish your own tutorial

To deploy/publish tutorial on your shinyapps.io account, use _Publish_ button provided by package `rsconnect` in RStudio. Alternatively, in an R session try a code like this

```
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

This option is useful if you work behind a proxy. In any case, publishing your own tutorials is beyond the objectives of the workshop.
