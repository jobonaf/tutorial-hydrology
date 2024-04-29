# tutorialhydrology
R tutorials for the __6th Workshop on Water Resources in Developing Countries__ at ICTP in Trieste, Italy.

### tutorials online
You can play with the tutorials interactively in your browser without downloading anything:

1. _Introduction_: https://jobonaf.shinyapps.io/tutorialhydrology-intro/

### run locally
You can also download them and run them locally in your R/Rstudio session:

- clone from GitHub with command `git clone https://github.com/jobonaf/tutorialhydrology.git` in your shell, or in RStudio with _File | New project_
- open the new RStudio project and use the _Build_ button to build the package
- navigate the tutorials in the _Tutorial_ pane and launch the one you are interested in
- if you want you can modify them in the folder `inst/tutorials` and rebuild the package

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

This option is useful if you work behind a proxy.
