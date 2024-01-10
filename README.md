## Contents

* [Scientific programming in Python crash course](crash/)

* [Data Science tools in Python](tools/)

* [NumPy](numpy/)

* [Pandas](pandas/)

* [Data visualization with Matplotlib and Seaborn](dataviz/)

* [Machine Learning Foundations](mlfoundations/)

* [Supervised learning](supervised/)

* [Unsupervised learning](unsupervised/)

* [Artificial Neural Networks](ann/)

* [Deep learning](dl/)

* [Neuroevolution](neuroevolution/)

* [Case studies](cases/)

## Practical assignments

* [Exploratory data analysis](assignments/exploration/exploration.md)

* [MPG dataset classification and regression](assignments/mpg/mpg.md)

* [Control of a wall-following robot with hyperparameters optimization](assignments/wall/wall.md)

* [Control of a wall-following robot with Keras](assignments/wall/wall-keras.md)

* [Robotic control based on hand gestures](assignments/gesture/gesture.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/assignments/gesture/gesture.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a>

* [Stellar objects identification with Machine Learning](https://github.com/dfbarrero/dataCourse/blob/master/assignments/stellar/stellar.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/assignments/stellar/stellar.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

* [Solar System planets image classification](assignments/planets/planets.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/assignments/planets/planets.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

* [Sunsplots forecasting with a deep autoregressive neural network](assignments/sunspots/sunspots-LSTM.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/assignments/sunspots/sunspots-LSTM.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a>  

* [Paper "Deep Neural Networks With Convolutional and LSTM Layers for SYM-H and ASY-H Forecasting"](assignments/papers/symh.md)

### Old assignments

* [Introduction to KNIME Analytics Platform](assignments/knime/intro.md)

* [Machine-Learning based robot motion control](assignments/robot/robot.md)

* [Regression analysis of exoplanets masses](assignments/exoplanets/exoplanets.md)

## Notebooks

* [iPython](tools/ipython.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/tools/ipython.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a>

* [Numpy](numpy/numpy.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/numpy/numpy.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a>

* [Pandas](pandas/Pandas.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/pandas/Pandas.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a>

* [Dataviz with Matplotlib](dataviz/DatavizWithMatplotlib.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/dataviz/DatavizWithMatplotlib.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

* [Dataviz with Seaborn](dataviz/DatavizWithSeaborn.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/dataviz/DatavizWithSeaborn.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

* [Introduction to Scikit-Learn](mlfoundations/scikit-learn.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/mlfoundations/scikit-learn.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

* [Introduction to Keras](ann/keras.ipynb) <a href="https://colab.research.google.com/github/dfbarrero/dataCourse/blob/master/dl/cnn.ipynb" target="_blank"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"/></a> 

## Compilation

Use xelatex or lualatex as latex processors, otherones would raise a compilation error. Custom UAH fonts are needed to properly compile the project. The original template used to format the slides, including the fonts, can be downloaded from [this repository](https://github.com/dfbarrero/UAH-beamer-template). By default, the theme will use UAH fonts installed in the system, edit the theme to easily change this behaviour.

*Manual execution of xelatex or lualatex would generate a compilation error*, since the tex documents require a variable containing the course for which the slides are compiled. You should use instead the command make which calls xelatex with the proper variable definition.

Several Makefiles are provided to ease repository management. Make executed from the root folder would compile the entire collections of slides for all the courses, while "make view" would open a PDF viewer with all the complided slides. On the contrary, if make is executed within a subfolder, it would only compile the slided contained in that folder. By default, make compiles the slides for all the courses, while "make course" would build the slides for that course.

The courses for which the slides are compiled are defined in the TARGET variable, in the begining of the Makefiles. The courses details such their names are defined in [gsi-parametros.sty](gsi-parametros.sty), in the root folder.

## Credits

Lectures tools, NumPy, Pandas and data visualization of this course are based on the book ["Python Data Science Handbook"](https://jakevdp.github.io/PythonDataScienceHandbook/).
