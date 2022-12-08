# Control of a wall-following robot 

## Objetivos
- Conocer técnicas para abordar un dataset desbalanceado.
- Realizar una optimización de hiperparámetros sistem.
- Aplicar diversos algoritmos de clasificaci

## Introducción
En esta práctica se va a entrenar el controlador de un robot para que siga las paredes. La percepción del controlador está basada en las lecturas de 24 sensores repartidos por el robot, separados con un ángulo constante. El robot puede realizar cuatro acciones: Mover hacia delante, girar suave a la izquierda, girar suave a la derecha o girar fuerte a la derecha. El entrenamiento del controlador se realizará con un conjunto de datos disponible en este enlace.

## Unbalanced classes
Hay diversas acciones que se pueden realizar para abordar un conjunto de entrenamiento desbalanceado, el mejor enfoque dependerá del problema y el conjunto de datos en sí. 

Lo que es común en todas las circunstancias es que las métricas habituales de precision y recall usadas ne clasificación, cuando hay datos desbalanceados, son engañosas. Imagine, por ejemplo, un dataset con un 99% de instancias de una clase A, y sólo un 1% de la clase B. Si aplicamos un clasificador dummy que todo lo clasifique como A, este clasificador tendrá un ap recisión del 99%, lo que numéricamente es muy buen desempeño, pero claramente este clasificador no funcionar correctamente. Por este motivo ante datos desbalanceados se suele prescindir del accuracy y recall, y se utilizan otras métricas con mayour robustez, como F1, que se define como la media armónica del precission y recall.

$F1 = 2 \times \frac{\text{precission} \times \text{recall}}{\text{precission} + \text{recall}}$

F1 está definida en un rango de cero a uno, correspondiendo uno a una clasificación perfecta.

La forma más directa de balancear las clases es submuestreando la clase mayoritaria o sobremuestreando la minoritaria. Una variación de este último enfoque es agregar de forma controlada ruido al sobremuestreo, de forma que se aporte una mayor variedad al dataset, evitando que haya un sobreaprendizaje. En el contexto del Aprendizaje Profundo a esta técnica se la conoce como "data augmentation".

Técnicas más avanzadas implican generar sintéticamente nuevas instancias de la clase minoritaria. Por ejemplo, [SMOTE](https://machinelearningmastery.com/smote-oversampling-for-imbalanced-classification/) es una técnica de cierta sofisticación y bastante popular que crea nuevas instancias de la clase minoritaria muestreando la recta que una instancia minoritaria con algún vecino cercano. 

<img align="center" src="https://machinelearningmastery.com/wp-content/uploads/2019/10/Scatter-Plot-of-Imbalanced-Binary-Classification-Problem-Transformed-by-SMOTE.png" width="300">

## Hyperparameter optimization
El desempeño de los modelos depende fuertemente de los hiperparámetros. Dado que el desempeño se puede cuantificar, podemos ver este problema como un problema puro de optimización, para el que hay multitud de técnicas en el ámbito de la IA. 

<img align="center" src="random.png" width="300">
<img align="center" src="grid.png" width="300">

Una de las técnicas de optimización de hyperparámetros más usado en Aprendizaje Automático es la aportada por la función de Scikit-Learn *GridSearch()*, a la que se la aportan los hiperparámetros que se desean optimizar y un rango de valores en donde hacer la búsqueda. La función crea una combinación de hyperparámetros y entrena al modelo con cada combinación, devolviendo la combinación que obtiene un mejor rendimiento.

```Python
from sklearn import svm, datasets
from sklearn.model_selection import GridSearchCV

iris = datasets.load_iris()

parameters = {'kernel':('linear', 'rbf'), 'C':[1, 10]}

svc = svm.SVC()
clf = GridSearchCV(svc, parameters)
clf.fit(iris.data, iris.target)
clf.best_params_
```
## Observaciones
Dada la naturaleza de este dataset, y los objetivos de la práctica, tenga en cuenta las siguientes consideraciones:

- Usar F1 como métrica de calidad de los clasificadores.
- Aplicar validación cruzada con un número de folders de su elección.
- Tenga en cuenta que el problema es de optimización multiclase, por lo que ciertos algoritmos no son de aplicación, y otros algoritmos necesitan adaptaciones.

## Tareas
Cree un notebook en el que se realicen las siguientes tareas.

Empezaremos la práctica cargando los datos:

- Descargue el [conjunto de datos](https://raw.githubusercontent.com/dfbarrero/dataCourse/master/assignments/wall/sensor_readings_24.csv). 
- Construya un dataframe de Pandas a partir del CSV. Observe que el CSV no tiene cabeceras, por lo que tendrá que agregarlas de algún modo.

Seguiremos con un EDA, que a diferencia de práctica anteriores incorporaremos un análisis multivariable.

- Haga un EDA incluyendo los aspectos habituales: presencia de valores vacíos, outlaiers, número de instancias, número y tipo de atributos, principales propiedades estadísticas de los atributos, análisis univariable y bivariable, incluyendo correlaciones entre atributos. 
- Amplíe el EDA con un análisis multivariable. Para ello utilice el PCA de los datos: visualice en 2D (o 3D, si lo desea) los componentes con más información y visualice la cantidad de varianza explicada por cada componente. Evalúe la dificultad de la clasificación en base a esta información.

Comencemos con el modelado predictivo. El objetivo es predecir la acción del robot en base a las lecturas de sus sensores sónar.

- Establezca un baseline para comparar con próximos resultados. Utilice como métrica F1.
- Aplique los clasificadores que estime oportuno con los hiperparámetros por defecto.
- Haga una optimización de hiperparámetros para cada uno de esos clasificadores y compare los resultados.

Vamos a intentar mejorar el rendimiento del clasificador jugando con el preprocesado de los datos aplicando PCA.
- Aplicaremos los clasificadores sobre PCA. PCA elimina correlaciones entre los atributos, es decir, elimina las relaciones lineales entre atributos, por lo que potencialmente puede facilitar el aprendizaje del modelo. Extraiga los componentes principales que estime oportuno y entrene un clasificador de su elección. Compare el resultado.
- Suele ser conveniente realizar pequeños experimentos que fundamenten las decisiones que tomamos. En el apartado anterior se seleccionó un número de componentes de forma algo arbitraria, vamos a reevaluar esta decisión de forma más científica. Entrene diversos clasificadores alimentándolos un número variable de componentes y determine experimentalmente qué número de componentes conducen a un mejor clasificador. Para esto puede iterar manualmente sobre el parámetro a establecer, o bien puede usar la función *GridSearchCV()*.

