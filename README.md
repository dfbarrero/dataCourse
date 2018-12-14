## Contents

1.- [Data Science tools in Python](tools/)

2.- [NumPy](numpy/)

3.- [Pandas](pandas/)

4.- [Data visualization with Matplotlib and Seaborn](dataviz/)

5.- [Machine Learning Foundations](mlfoundations/)


## Practical assignments

* [Introduction to KNIME Analytics Platform](assignments/knime/intro.md)

* [Machine-Learning based robot motion control](assignments/robot/robot.md)

* [Regression analysis of exoplanets masses](assignments/exoplanets/exoplanets.md)


## Notebooks

* [Numpy](numpy/numpy.ipynb)

* [Pandas](pandas/pandas.ipynb)

* [Dataviz with Matplotlib](dataviz/DatavizWithMatplotlib.ipynb)

* [Dataviz with Seaborn](dataviz/DatavizWithSeaborn.ipynb)

* [Introduction to Scikit-Learn](mlfoundations/scikit-learn.ipynb)


## Compilation

Use xelatex or lualatex as latex processors, otherones would raise a compilation error. Custom UAH fonts are needed to properly compile the project. The original template used to format the slides, including the fonts, can be downloaded from [this repository](https://github.com/dfbarrero/UAH-beamer-template). By default, the theme will use UAH fonts installed in the system, edit the theme to easily change this behaviour.

*Manual execution of xelatex or lualatex would generate a compilation error*, since the tex documents require a variable containing the course for which the slides are compiled. You should use instead the command make which calls xelatex with the proper variable definition.

Several Makefiles are provided to ease repository management. Make executed from the root folder would compile the entire collections of slides for all the courses, while "make view" would open a PDF viewer with all the complided slides. On the contrary, if make is executed within a subfolder, it would only compile the slided contained in that folder. By default, make compiles the slides for all the courses, while "make course" would build the slides for that course.

The courses for which the slides are compiled are defined in the TARGET variable, in the begining of the Makefiles. The courses details such their names are defined in [gsi-parametros.sty](gsi-parametros.sty), in the root folder.

## Credits

Lectures tools, NumPy, Pandas and data visualization of this course are based on the book ["Python Data Science Handbook"](https://jakevdp.github.io/PythonDataScienceHandbook/).
