#### c34a5d0e
# Grade Calculator

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
- weightedaverage()

The function weightedaverage() calculates weighted average of all the courses and computes the final degree classification for all DSE students in csv file.
Type ?weightedaverage for a complete description of the function.
```
Example: 
> weightedaverage()
   Students degrees complete
1   Giorgia  110.00     TRUE
2      Anna   83.93     TRUE
3   Corrado   89.43     TRUE
4    Andrea   85.35     TRUE
5 Alejandra   96.46    FALSE
6  Gerolamo   90.93    FALSE

Or
> weightedaverage("Giorgia")
  Students degrees complete
1  Giorgia     110     TRUE
```
- adjustedfinaldegree()

The function adjustedfinaldegree() takes a possible score to all the exams that you still need to do and calculates your "adjusted" final degree. Infact few DSE students have not complete their plan of study so they have to understand, through this tool, the impact on future grades on their final degree assignment.
Type ?adjustedfinaldegree for a complete description of the function.

```
Example: 
> adjustedfinaldegree(18)
    Stdents   Subjects cfu Score AdjFinalDegree
1 Alejandra     Coding  12    18          88.00
2 Alejandra       Opt2   6    18          88.00
3 Alejandra       Opt4   6    18          88.00
4 Alejandra       Opt5   6    18          88.00
5  Gerolamo Algorithms   6    18          86.78
6  Gerolamo       Opt3   6    18          86.78
7  Gerolamo       Opt5   6    18          86.78
```

- weightedaverageGUI()

The function weightedaverageGUI() shows how is the trend of all final grade classifications for each DSE students in the file.
Type ?weightedaverageGUI for a complete description of the function.

- ScoreDensity()

The function ScoreDensity() calculates how many times occur a certain score and draw a plot to show it. Type ?ScoreDensity. 

- ScoreDensityForStudent()

The function ScoreDensityForStudent() makes a statistical analysis for all DSE students (mean,variance,min,max) through a plot. Type ?ScoreDensityForStudent. 

- TermFrequency()

The function TermFrequency() draws the frequency of exams taken in each term or session. Type ?TermFrequency

- StudentsDistribution()

The function StudentsDistruibution() represents through a map the density of students that attend DSE by their nationalities. Type ?StudentsDistribution.

- GradeCalculatorGUI()

The function GradeCalculatorGUI() runs a Graphical User Interface to understand the final degree classification obtained just writing the name used in the csv file.
