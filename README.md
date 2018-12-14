## Contents

1.- [Introduction to Python](1-introduction/)

2.- [Control flow](2-controlflow/)

3.- [Data structures](3-datastructures/)

4.- [Modules](4-modules/)

5.- [IO](5-io/)

6.- [Errors and exceptions](6-exceptions/)

7.- [Object-Oriented Programming in Python](7-oop/)

Bonus track:

* [Scientific programming in Python](scipy/)

## Practical assignments

* [Práctica 1: Ejercicios básicos de Python](assignments/p1.pdf)

* [Práctica 2: Sentencias de control](assignments/p2.pdf)

* [Práctica 3: Estructura de datos](assignments/p3.pdf)

* [Práctica 4: Módulos](assignments/p4.pdf)

* [Práctica 5: Entrada/Salida](assignments/p5.pdf)

* [Práctica 6: Programación Orientada a Objetos en Python](assignments/p5.pdf)

## Notebooks

* [Dataviz with Matplotlib](scipy/DatavizWithMatplotlib.ipynb)

* [Dataviz with Seaborn](scipy/DatavizWithSeaborn.ipynb)

## Compilation

Use xelatex or lualatex as latex processors, otherones would raise a compilation error. Custom UAH fonts are needed to properly compile the project. The original template used to format the slides, including the fonts, can be downloaded from [this repository](https://github.com/dfbarrero/UAH-beamer-template). By default, the theme will use UAH fonts installed in the system, edit the theme to easily change this behaviour.

*Manual execution of xelatex or lualatex would generate a compilation error*, since the tex documents require a variable containing the course for which the slides are compiled. You should use instead the command make which calls xelatex with the proper variable definition.

Several Makefiles are provided to ease repository management. Make executed from the root folder would compile the entire collections of slides for all the courses, while "make view" would open a PDF viewer with all the complided slides. On the contrary, if make is executed within a subfolder, it would only compile the slided contained in that folder. By default, make compiles the slides for all the courses, while "make course" would build the slides for that course.

The courses for which the slides are compiled are defined in the TARGET variable, in the begining of the Makefiles. The courses details such their names are defined in [gsi-parametros.sty](gsi-parametros.sty), in the root folder.

## Credits

This course is based on "[The Python Tutorial](https://docs.python.org/3/tutorial/index.html)".
