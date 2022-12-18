# Control of a wall-following robot with Keras

## Objectives
- Introduce Keras.
- Better understand the influence of some hyperparameters and data preprocessing to the model performance.

## Introduction
In this practice a robot controller is going to be trained to follow walls. The controller's perception is based on readings from 24 sensors spread around the robot, spaced at a constant angle. The robot can perform four actions: Move-Forward, Sharp-Right-Turn, Slight-Right-Turn and Slight-Left-Turn. The training of the controller will be performed with a dataset available at [this link](https://raw.githubusercontent.com/dfbarrero/dataCourse/master/assignments/wall/sensor_readings_24.csv).

## Tasks

We will start the practice by loading the data:

- Download the [dataset](https://raw.githubusercontent.com/dfbarrero/dataCourse/master/assignments/wall/sensor_readings_24.csv). 
- Build a Pandas dataframe from the CSV. Note that the CSV has no headers, so you will have to add them somehow. Please, try not to write down a 25-elements list by hand.

Perform an EDA, if it has not been previously done.

We continue with predictive modeling. The goal is to predict the robot's action based on its sonar sensor readings. 

- Implement a neural network with Keras that classifies the robot action. Remember that the output layer activation should be 'sigmoid' and the input data should be scaled. Compute the loss and accuracy on validation and use a 'sparse_crossentropy_loss' as loss function.
  * On the contrary than Scikit-Learn, Keras does not accept string labels as targets, it must be integers. Please check out the class [sklearn.preprocessing.LabelEncoder](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.LabelEncoder.html).
- Manually choose (i.e. do not use grid or random search)  a good learning rate. 
- Manually choose the best performing optimizer: ""XXX
- Now we will play with some hyperparameters. Do not expect an improvement of the model performance.
  * Change the output layer activation function to linear or ReLu. How does the performance change?.
  * Train the network with unscaled data. What happens?


