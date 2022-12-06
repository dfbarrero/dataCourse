# Basic predictive modeling with Sciki-Learn

- Objetivos
    - Practicar el API básico de Scikit-Learn.
    - Practicar el flujo de trabajo básico EDA-modelado-análisis-refinamiento del modelo.
    - Entender la relación entre EDA y modelado predictivo.
    - Entender cómo añadir variables categóricas a un modelado numérico.
    - Entender la importancia de la ingeniería de atributos en el modelado predictivo.

- mpg EDA, answer the following questions
    - Number of instances.
    - Number of attributes.
    - Type of attributes.
    - Number of NaNs.
    - Number of categories and instances in each category.
    - Outliers.
    - Histogram of each attribute.
    - Find correlations among the attributes.

- Limpia, si es preciso, tus datos, y gestiona los datos vacíos.

- Modelado predictivo.
    - Clasificación
        - Set a baseline to compare with.
        - Predice con un árbol de clasificación el lugar de origen en función del resto de atributos viables.
        - Elimina los atributos sin correlación y/o capacidad predictiva.
        - Vuelve a entrenar un árbol de clasificación y compara su desempeño.
        - Interpreta el árbol de clasificación resultante.
    - Regresión
        - Predice la potencia mediante una regresión lineal con el resto de atributos numéricos.
        - Analiza el modelo resultante.
        - Realiza una nueva regresión lineal añadiendo variables categóricas. Investiga algo llamado *one-hot encoding* para realizar esta tarea.
        - Compara el resultado con la regresión en base a atributos numéricos.
        - Analiza el modelo resultante.
        - Implementa una regresión polinómica entre XXX e YYY, para ello agrega un nuevo atributo que sea YYY^2 y aplica una regresión lineal.
        - Agrega nuevos atributos a tu criterio para mejorar el modelado (ingeniería de atributos).
        - Compara el resultado con las regresiones anteriores.
        - Bonus track: Try something named Lasso, Ridge and ElasticNet regression.
