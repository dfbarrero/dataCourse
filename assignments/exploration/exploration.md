# Exploratory data analysis

## Objectives

* Get used to data analysis tools

* Develop analytical thinking

## Preliminary steps

First of all, select a dataset of your convenience from the ones available in [Seaborn build-in datasets](https://github.com/mwaskom/seaborn-data). You must not choose any datasets used as examples in class (i.e. Iris, titanic and tips). Suggested datasets are the following ones:

* car_crashes.
* diamonds.
* exercise. 
* mpg.
* planets.

You can load those datasets with the following code:

```Python
import seaborn as sns
iris = sns.load_dataset('planets')
```

We recommend to read a notebook with an example of data exploration to better understand the whole process. An interesting notebook is [this one](https://www.geeksforgeeks.org/exploratory-data-analysis-on-iris-dataset/).

## Assignment goal

The goal of this assignment is to perform an exploratory data analysis of a simple dataset. To this end, create an notebook, load a dataset of your interest and apply techniques developed in along the lecture (summary statistics and/or graphical tools).

In order to properly frame the study, you should set a general objective. A brief discussion with your instructor would help to this end.

Remember that the goal of an exploratory analysis is not to provide a definitive answer to a question, but rather to get an insight to the data to better frame futher analysis. In other words, we want to describe our data instead of reaching solid conclusions.
