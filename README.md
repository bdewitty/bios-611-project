Abortion Rates and Policy in the United States
===============

Introduction
------------
I have chosen the abortion statistics dataset from Guttmacher Institute for use throughout this semester.  
The dataset provides rates of pregnancy, birth, spontaneous abortion (miscarriage), and induced 
abortion. Rates are reported per 1,000 women. The total population of women in the United States is 
also provided for each year. The data does not include illegal or less safe abortion methods. Abortion 
rates are reported by year and age group. The time period ranges from 1973-2017. There are 10 age 
groups including ages 14 and younger, 15-17, 18-19, 20-24, 25-29, 30-34, 35-39, and 
women aged 40 or older. Other categories of young pregnancies include age 15-19 and younger than 20. 

Using this Repository
---------------------
This repository is best used via Docker although you may be able to consult the Dockerfile to understand what requirements are appropriate to run the code. Through docker, you will create a separate environment, or a virtual computer, that contains all the resources needed to view and interact with this project without putting a burden on your own personal computer.

First open a terminal and build the docker container using the code:
```
docker build . -t bios-611-project
```

And then start an RStudio instance in your web browser by typing in the terminal:

```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=<some-password>
```

Once the Rstudio is running connect to it by visiting
https://localhost:8787 in your browser. 

Login to R studio with:
  username:rstudio
  password:some-password


In the R console install the needed packages:

```{R}
library(tidyverse)
install.packages("reshape2")
library(reshape2)
```

To build the final report, visit the terminal in RStudio and type

```
make report.pdf
```
