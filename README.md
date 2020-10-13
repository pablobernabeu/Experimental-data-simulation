# Web application for the simulation of experimental data

### Purposes

This open-source, R-based web application is suitable for educational and research purposes in experimental and quantitative sciences. It allows the **creation of varied data sets with specified structures, such as between-group and within-participant variables, that can be categorical or continuous.** These parameters can be set throughout the various tabs from the top menu. In the last tab, the data set can be downloaded. The benefits of this application include time-saving and flexibility in the control of parameters.

## :globe_with_meridians: &nbsp; The web application can be [launched here](https://pablo-bernabeu.shinyapps.io/experimental-data-simulation/).

<br>

<p style='margin-bottom:90px;' align="center">
<a href="https://github.com/pablobernabeu/Experimental-data-simulation/raw/master/Screenshot.png"><img style='display: block; margin-left: auto; margin-right: auto;' src="https://github.com/pablobernabeu/Experimental-data-simulation/raw/master/Screenshot.png" width='80%' /></a>
  </p>

<br>

### Reference

Bernabeu, P., & Lynott, D. (2020). Web application for the simulation of experimental data (Version 1.1). Retrieved from [https://github.com/pablobernabeu/Experiment-simulation-app/](https://github.com/pablobernabeu/Experiment-simulation-app/).

### Code

This web application was developed in [R](https://www.r-project.org/about.html) (R Core Team, 2020). The initial code for this application was influenced by Section 5.7 ([*Simulating data for multi-factor designs*](https://crumplab.github.io/programmingforpsych/simulating-and-analyzing-data-in-r.html#simulating-data-for-multi-factor-designs)) in Crump (2017). The R packages used include 'dplyr' (Wickham, François, Henry, & Müller, 2018), 'DT' (Xie, 2020), 'flexdashboard' (Iannone, Allaire, & Borges, 2020), 'shiny' (Chang, Cheng, Allaire, Xie, & McPherson, 2020) and 'stringr' (Wickham, 2019).

### Options for development and local use of the app

#### Option A) Using local R/RStudio or [RStudio Cloud project](https://rstudio.cloud/project/1739958) or [RStudio Binder environment](https://mybinder.org/v2/gh/pablobernabeu/Experimental-data-simulation/master?urlpath=rstudio)

1. [Not necessary if using the Binder environment.] Install the packages in the versions used in the [latest release of this application](https://github.com/pablobernabeu/Experimental-data-simulation/releases).

    ```
    install.packages('devtools')
    library(devtools)
    install_version('dplyr', '1.0.2', 'http://cran.us.r-project.org')
    install_version('DT', '0.15', 'http://cran.us.r-project.org')
    install_version('flexdashboard', '0.5.2', 'http://cran.us.r-project.org')
    install_version('htmltools', '0.5.0', 'http://cran.us.r-project.org')
    install_version('knitr', '1.30', 'http://cran.us.r-project.org')
    install_version('ngram', '3.0.4', 'http://cran.us.r-project.org')
    install_version('purrr', '0.3.4', 'http://cran.us.r-project.org')
    install_version('shiny', '1.5.0', 'http://cran.us.r-project.org')
    install_version('stringr', '1.4.0', 'http://cran.us.r-project.org')
    install_version('tidyr', '1.1.2', 'http://cran.us.r-project.org')
    ```

2. Open the [index.Rmd](https://github.com/pablobernabeu/Experimental-data-simulation/blob/master/index.Rmd) script.

3. Run the application by clicking on <kbd>▶️&nbsp; Run document</kbd> at the top left, or by running `rmarkdown::run('index.Rmd')` in the console.

4. Click on <kbd>Open in Browser</kbd> at the top left.

#### Option B) Using Dockerfile ([@vsoch's pull request](https://github.com/pablobernabeu/Experimental-data-simulation/pull/1))

A [Dockerfile](Dockerfolder/Dockerfile) has been provided. First, build the container:

```bash
docker build -t experiment-shiny-app .
```

And then run the container, selecting a password for the interface and binding to port 8787 on your local machine.

```bash
$ docker run --interactive --rm -e PASSWORD=<MYPASSWORD> -p 8787:8787 --name experiment-shiny-app --volume $(pwd):/home/rstudio experiment-shiny-app
[s6-init] making user provided files available at /var/run/s6/etc...exited 0.
[s6-init] ensuring user provided files have correct perms...exited 0.
[fix-attrs.d] applying ownership & permissions fixes...
[fix-attrs.d] done.
[cont-init.d] executing container initialization scripts...
[cont-init.d] add: executing... 
Nothing additional to add
[cont-init.d] add: exited 0.
[cont-init.d] userconf: executing... 
[cont-init.d] userconf: exited 0.
[cont-init.d] done.
[services.d] starting services
[services.d] done.
```

You can then open [127.0.0.1:8787](127.0.0.1:8787) to see the interface and login with username "rstudio" and
your chosen password. You can then select the Rmd file and click "Run Document" to generate the window for the application,
shown below.

<p style='margin-bottom:90px;' align="center">
<img style='display: block; margin-left: auto; margin-right: auto;' src="img/interface.png" width='40%'>
</p>

<br>

### Acknowledgements

Thank you to RStudio for the free hosting server used by this application, [shinyapps.io](https://www.shinyapps.io/).

### References

<div style = "text-indent:-1.5em; margin-left:1.5em;">

Chang, W., Cheng, J., Allaire, J., Xie, Y., & McPherson, J. (2020). shiny: Web Application Framework for R. R package version 1.4.0. Available at [http://CRAN.R-project.org/package=shiny](http://CRAN.R-project.org/package=shiny).

Crump, M. J. C. (2017). Programming for Psychologists: Data Creation and Analysis (Version 1.1). [https://crumplab.github.io/programmingforpsych/](https://crumplab.github.io/programmingforpsych/).

Iannone, R., Allaire, J. J., & Borges, B. (2020). Flexdashboard: R Markdown Format for Flexible Dashboards. [http://rmarkdown.rstudio.com/flexdashboard](http://rmarkdown.rstudio.com/flexdashboard).

R Core Team (2020). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL [https://www.R-project.org/](https://www.R-project.org/).

Wickham, H. (2019). stringr: Simple, Consistent Wrappers for Common String Operations. R package version 1.4.0. [https://CRAN.R-project.org/package=stringr](https://CRAN.R-project.org/package=stringr).

Wickham, H., François, R., Henry, L., & Müller, K. (2018). dplyr: A Grammar of Data Manipulation. R package version 0.7.6. [https://CRAN.R-project.org/package=dplyr](https://CRAN.R-project.org/package=dplyr).

Xie, Y. (2020). DT: A Wrapper of the JavaScript Library "DataTables". R package version 0.14. Available at [https://CRAN.R-project.org/package=DT](https://CRAN.R-project.org/package=DT).

</div>

### Contact

To submit any questions or feedback, please post [an issue](https://github.com/pablobernabeu/Experimental-data-simulation/issues), or email Pablo Bernabeu at [p.bernabeu@lancaster.ac.uk](mailto:p.bernabeu@lancaster.ac.uk).

<br>
