# MPG dataset classification and regression

## Objectives of the project
    - To practice the basic Scikit-Learn API.
    - To assimilate the basic EDA-modeling-model analysis-refinement workflow.
    - Understand the relationship between EDA and predictive modeling.
    - Understand how to add categorical variables to numerical modeling.
    - Understand the importance of attribute engineering in predictive modeling.

## Introduction

Every Machine Learning project has to address a series of common steps, starting with a first contact through an EDA, followed by data preprocessing, modeling and finally model evaluation. It is very common to also perform model refinement, which includes training with new hyperparameters or making some change in the data preprocessing. It is also common to perform some kind of model interpretation, although this depends on the problem and the type of learning algorithms applied.

This practice aims, on the one hand, to introduce the most common workflow in Machine Learning, and on the other hand to practice the Scikit-Learn API. For this purpose, a simple dataset, very used for teaching purposes, which is the mpg, is used. This dataset is included in the Seaborn library, so it is not necessary to download it. This dataset relates various car models with basic engine variables (number of cylinders, power, etc.), with consumption measured in gallons per mile (hence the acronym MPG), and its origin. The dataset contains numerical and categorical variables, is easy to understand, and is suitable for both regression and classification problems.


## Tasks

Create a single notebook in which the following tasks are implemented. Take care to keep a neat, clear and well explained notebook, especially the conclusions reached.

* Perform, if you have not already done so, an EDA that obtains the following information. You can reuse previous assignments.
    - Number of instances and attributes.
    - Type of attributes.
    - Number of NaNs.
    - Number of categories and instances in each category.
    - Outliers.
    - Histogram/density of each attribute.
    - Correlations among the attributes.

* Clean, if necessary, your data, and manage empty data.

* Predictive modeling with classification
    - The performance of any predictive model is highly dependent on both the problem itself and the training set, so that an absolute value of, for example, accuracy, is relatively uninformative. For this reason, a first recommended step predictive modeling is to establish a baseline in order to compare our models. This baseline is usually obtained by applying a simple criterion, the most common is to calculate the accuracy (or other metric) always classifying with the majority class, for this Scikit-Learn provides us with the *DummyClassifier()* class. Apply this class, or another method that you consider appropriate, to establish a baseline taking 'origin' as target attribute. Use accuracy as a performance metric and divide the dataset into train and test.
    - Predict 'origin' with a classification tree based on the other viable attributes. The name of the car, for instance, is not a meaningful attribute from the perspective of predictive modeling. Compare it with the baseline.
    - Eliminate attributes without correlation and/or low predictive power and train another classification tree. Compare its performance with the previous model and the baseline.
    - Optimize the hyperparameter *max_depth*, which sets an upper bound on the depth of the tree, and retrain the model. The optimization method can range from extremely simple to extremely complex. For this practice, iterate over a range of reasonable values of *max_depth* to obtain the accuracy of the models. This task is of the utmost importance in real world problems, so we will go deeper into it later.
    - Compare the performance of the optimized model to the previous models and the baseline.
    - Interpret the best performing classification tree. To this end, draw the tree and interpret it.

* Predictive modeling with regression
    - Predict the attribute 'power' using a linear regression with the remaining numerical attributes. Use the MSE as a quality metric of the regression model and divide the data set into train and test. Please, observe that setting a baseline in regression is not as straitforward as in classification. It is rather common to use a linear regression as baseline.
    - Analyze the resulting model by visualizing its coefficients.
    - Perform a new linear regression by adding the categorical attribute "origin". Reflect on how a categorical attribute can be introduced into a purely numerical technique such as linear regression. After reaching a conclusion, investigate something called *one-hot encoding* and use it.
    - Compare the result with the regression based on numerical attributes and interpret the model.
    - Obtain different linear models by grouping the data by origin and see if the fit improves.
    - Implement a polynomial regression between 'mpg' and 'weight' by adding a new attribute that is the square of the weight and apply a linear regression. Alternatively, you can use the *sklearn.preprocessing.PolynomialFeatures* class from Scikit-Learn, see the documentation for more information.
    - Add new attributes to your criteria to improve modeling. This task of looking for attributes that improve the model fit is called **attribute selection**, the task of creating new attributes is known as **attribute engineering**. Compare the resulting model fit with the original one and interpret the model.
    - Bonus track: Try something named regression tree. Use Google and Scikit reference documentation.

