# Machine-Learning based robot motion control

## Objectives

* Implement a realistic Machine Learning workflow

* Integrate classification and Principal Component Analysis

* Implement a 10 cross-validation classifier evaluation

* Get an insight to the application of Machine Learning methods to Robotics

## Introduction

The goal of this assignment is to develop a robot controller able to follow a wall based on a set of sonar measurements. We will address this problem as a classification task in which the input is composed by several sonar measurements and the output class is the next robot motion.

Of course, we need a labeled dataset to train the classifier. To this end we will use the UCI [Wall-Following Robot Navigation Data Data Set](https://archive.ics.uci.edu/ml/datasets/Wall-Following+Robot+Navigation+Data). This dataset contains data for three robot contigurations:

* 2 sonars placed looking forward and backwards (*sensor_readings_2.data*).
* 4 sonars placed looking forward, backwards, left and right (*sensor_readings_4.data*).
* 24 sonars (*sensor_readings_24.data*).

The dataset provides an additional attribute with the expected robot motion, which is one label out of four: "Move-Forward", "Slight-Right-Turn", "Sharp-Right-Turn" and "Slight-Left-Turn"

## Preliminary steps

Download the UCI [Wall-Following Robot Navigation Data Data Set](https://archive.ics.uci.edu/ml/datasets/Wall-Following+Robot+Navigation+Data) and store it in a convenient location.

Open one of the data files with a text editor of your choice and inspect it.

## Robot motion control with two sonars

Firstly, we will train a classifier to predict the best next motion with the 2 sonars dataset. Using a single workflow, implement the following tasks:

1. Data adquisition. Read the file *sensor_readings_2.data*.

2. Data preprocessing. Observe that the provided dataset lacks columns names, which makes harder futher processing. Add columns names (Sonar1, Sonar2 and Action).

3. Exploratory analysis (I). Visualize the dataset to have a first contact with the data. Explore the dataset in search of outliers and missing values. Count the number of attributes, instances and instances of each class. Should any of these observations be taken into account to design the classifier training and evaluation?

4. Exploratory analysis (II). We are interested in training a classifier, so we are going to assess the difficulty of this task. Visualize a scatterplot relating the two sonar readings with its class. Can you clearly split the classes in the plot? If so, the classification problem is easy.

5. Classifier training and evaluation. Split the dataset into a training set (70%) and a validation set (30%). Which is the most suitable sampling method for this problem? Train a multilayer perceptron neural network (MLP) with one hidden layer and five neurons and assess its performance with a confusion matrix. Interpret the result.

6. Hyperparameter optimization (I). We are not satisfied with the previous result, so we will tune its parameters to increase the classifier performance. To this end, please train a new MLP, but this time use two hidden layers and ten hidden neurons. Do not worry if you do not understand the meaning of this change, you only should know that in this way the neural network increases the complexity of the model, and therefore can learn more complex patterns. Compare the accuracy with the accuracy of the previous model. (Hint: PLease, take into account that a neural network expects a normalized input).

7. Hyperparameter optimization (II). We are not satisfied with the model yet. Train a classification tree and compare it with the MPLs of the previous exercises.

8. Improving classifier evaluation. The evaluation of classifiers using training and validation sets is sensible to statistical bias in the data partition. For this reason a common practice is to apply 10-cross validation. 

## Robot motion control with 24 sonars

Apply any learning method at hand to get the highest accuracy classifier with the 24 sonar dataset.

## Model integration in robotic platform (optional)

Use the four sonars dataset to train a classifier and integrate it with a robot controler under ROS. You can use the [ros stdr ga](https://github.com/dfbarrero/ros_stdr_ga) package as starting point.
