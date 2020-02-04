#### c34a5d0e
## Grade Calculator


The aim of this project is to produce a weighted average calculator that calculates the average of all courses and gives in return the final degree classification. I designed this tool also to know how score is usefull to accept in an exam to have a certain final degree assignment.
This project tries to analyze statistically with some plots a sample given by csv file and in the end it helps you with a Graphical User Interface to understand your final degree classification.

## Data set
The study is focused on the example of few students from DSE, Data Science and Economics, Unimi.
The info are collected in a csv file as the gender, nationality, age for each student. This file contains also the date, the score and the cfu for each exam done by DSE students.

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

## Functions:
- weightedaverage

The function weightedaverage() calculates weighted average of all the courses and computes the final degree classification for all DSE students in csv file.
Type ?weightedaverage for a complete description of the function.

- adjustedfinaldegree 

The function adjustedfinaldegree() takes a possible score to all the exams that you still need to do and calculates your "adjusted" final degree. Infact few DSE students have not complete their plan of study so they have to understand, through this tool, the impact on future grades on their final degree assignment.
Type ?adjustedfinaldegree for a complete description of the function.

- weightedaverageGUI

The function weightedaverageGUI() shows how is the trend of all final grade classifications for each DSE students in the file.
Type ?weightedaverageGUI for a complete description of the function.

- ScoreDensity

The function ScoreDensity() calculates how many times occur a certain score and draw a plot to show it. Type ?ScoreDensity. 

- ScoreDensityForStudent

The function ScoreDensityForStudent() makes a statistical analysis for all DSE students (mean,variance,min,max) through a plot. Type ?ScoreDensityForStudent. 

- TermFrequency

The function TermFrequency() draws the frequency of exams taken in each term or session. Type ?TermFrequency

- StudentsDistribution

The function StudentsDistruibution() represents through a map the density of students that attend DSE by their nationalities. Type ?StudentsDistribution.

- GradeCalculator 

The function GradeCalculator() runs a Graphical User Interface to understand the final degree classification obtained just writing the name used in the csv file.
