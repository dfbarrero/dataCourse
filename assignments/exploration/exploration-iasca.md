# Exploratory data analysis

## Objectives

* Get used to data analysis tools

* Develop analytical thinking

## Preliminary steps

First of all, we recommend you to read a notebook with an example of data exploration to better understand the whole process. An interesting one is [this one](https://www.geeksforgeeks.org/exploratory-data-analysis-on-iris-dataset/), which uses the famous iris dasaset.

We are going to perform an EDA on a toy exoplanet dataset that comes along with Seaborn. You can load that dataset with the following code:

```Python
import seaborn as sns

df = sns.load_dataset('planets')
```

If you want a more challenging and realistic dataset, you may want to manually download a non-toy exoplanet database from the [NASA Exoplanet Archive](https://exoplanetarchive.ipac.caltech.edu/index.html). **Select the option to download values only**, limit the number of fields to download for more easily manageable file sizes, and be aware that the CSV file contains a header, which you may need to remove manually or tell the *pd.read_csv()* function to do so via the *header* argument.

## Assignment goal

The goal of this assignment is to perform an exploratory data analysis of a simple dataset. To this end, create a notebook, load a dataset of your interest and apply techniques developed in along the lecture (summary statistics and/or graphical tools).

Remember that the goal of an exploratory analysis is not to provide a definitive answer to a question, but rather to get an insight to the data to better frame futher analysis. In other words, we want to describe our data instead of reaching solid conclusions.

You may want to consider the following structure to guide your EDA.

- Visualize your raw data.
- First contact
  - Count number of instances and attributes (rows and columns).
  - Identify your variables.
  - Find out if there are duplicates and NaNs and handle them.
  - Get summary statistics (max, min, avg) and identify whether there are outlayers.
- Visualize your variables distribution (univariable).
- Identify correlations among your variables (bivariable).
