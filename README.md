## Contents

0.- [Scientific programming in Python crash course](crash/)

1.- [Data Science tools in Python](tools/)

2.- [NumPy](numpy/)

3.- [Pandas](pandas/)

4.- [Data visualization with Matplotlib and Seaborn](dataviz/)

5.- [Machine Learning Foundations](mlfoundations/)

6.- [Supervised learning](supervised/)

7.- [Unsupervised learning](unsupervised/)

8.- [Artificial Neural Networks](ann/)

9.- [Deep learning](dl/)

10.- [Neuroevolution](neuroevolution/)

## Practical assignments

* [Exploratory data analysis](assignments/exploration/exploration.md)

* [Introduction to KNIME Analytics Platform](assignments/knime/intro.md)

* [Machine-Learning based robot motion control](assignments/robot/robot.md)

* [Regression analysis of exoplanets masses](assignments/exoplanets/exoplanets.md)

* [Sunsplots forecasting with an autoregressive neural network](assignments/sunspots/sunspots-ar.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/assignments/sunspots/sunspots-ar.ipynb)

* [Sunsplots forecasting with a deep autoregressive neural network](assignments/sunspots/sunspots-LSTM.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/assignments/sunspots/sunspots-LSTM.ipynb)

* [Paper "Deep Neural Networks With Convolutional and LSTM Layers for SYM-H and ASY-H Forecasting"](assignments/papers/symh.md)


## Notebooks

* [Numpy](numpy/numpy.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/numpy/numpy.ipynb)

* [Pandas](pandas/Pandas.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/pandas/Pandas.ipynb)

* [Dataviz with Matplotlib](dataviz/DatavizWithMatplotlib.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/dataviz/DatavizWithMatplotlib.ipynb)

* [Dataviz with Seaborn](dataviz/DatavizWithSeaborn.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/dataviz/DatavizWithSeaborn.ipynb)

* [Introduction to Scikit-Learn](mlfoundations/scikit-learn.ipynb) [(Open in Colab)](https://githubtocolab.com/dfbarrero/dataCourse/blob/master/mlfoundations/scikit-learn.ipynb)


## Compilation

Use xelatex or lualatex as latex processors, otherones would raise a compilation error. Custom UAH fonts are needed to properly compile the project. The original template used to format the slides, including the fonts, can be downloaded from [this repository](https://github.com/dfbarrero/UAH-beamer-template). By default, the theme will use UAH fonts installed in the system, edit the theme to easily change this behaviour.

*Manual execution of xelatex or lualatex would generate a compilation error*, since the tex documents require a variable containing the course for which the slides are compiled. You should use instead the command make which calls xelatex with the proper variable definition.

Several Makefiles are provided to ease repository management. Make executed from the root folder would compile the entire collections of slides for all the courses, while "make view" would open a PDF viewer with all the complided slides. On the contrary, if make is executed within a subfolder, it would only compile the slided contained in that folder. By default, make compiles the slides for all the courses, while "make course" would build the slides for that course.

The courses for which the slides are compiled are defined in the TARGET variable, in the begining of the Makefiles. The courses details such their names are defined in [gsi-parametros.sty](gsi-parametros.sty), in the root folder.

## Credits

Lectures tools, NumPy, Pandas and data visualization of this course are based on the book ["Python Data Science Handbook"](https://jakevdp.github.io/PythonDataScienceHandbook/).
