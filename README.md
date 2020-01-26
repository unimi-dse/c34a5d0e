#### c34a5d0e
## Grade Calculator



The aim of this project is to produce a weighted average calculator that calculates the average of all courses and the final degree classification or assessment average. The study is focused on the example of few students from DSE, Data Science and Economics, Unimi. Every university works out degree classifications differently. For this reason, it has been designed as a tool through which you can quickly calculate weighted averages without having to know too much about marking policies. At the end, this project tries to analyze statistically the trend of the sample.

## Installation
```
# first install the R package "devtools" 
#devtools::install_github('unimi-dse/c34a5d0e')

```

## Usage

Load the package.
```
require(gradecalculator)

```

## Description of the application
First step of my project is to upload an file.csv that you can fill with all your marks, date of all your assignments and subjects. If you are a teacher and you want also the view of your class, you can also fill other variables as nationality, age, gender for all your students. This could help you to analyze your data and try to discover some casual inferences and correlations. 
For having an idea of what means, I prepared a file with a sample of some students of DSE. Few of these have not complete their plan of study so they have to understand, through this tool, the impact on future grades on their final degree assignment. 
At the end of this analysis, you can find some statistic tools to understand your data and the quality of the course. 
