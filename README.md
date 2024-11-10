# **Gyroscopio de un grado de libertad** : Nutación

Módelo del ángulo de nutación de un gyroscopio de un solo grado de libertad.

---

## Descripción del proyecto
Para este proyecto hemos desarrollado el modelo de un giroscopio de un solo grado de libertad. Este tipo de dispositivo nos permite medir el ángulo de nutación con respecto a diferentes velocidades de precesión.   

Para ello disponemos del siguiente modelo: 

$$ I*\alpha'' + Kv*\alpha' + Km*\alpha = H*\gamma'$$

donde el angulo de nutación se representa con alpha y gamma la velocidad de precesión.

Por otra parte introducimos un modelo para la velocidad de precesión con respecto a un gyroscopio normal. 

$$ wp = r*M*g/I*w $$

## Descripción de los modelos y componentes
Para llevar acabo la validación del modelo hemos desarrollado los siguientes elementos.

1. Bloques\
En este directorio podemos encontrar los principales bloques de la libreria por separado. 

2. Clases\
En este directorio podemos encontrar una clase que simula el comportamiento del sistema en un solo modelo.

3. Modelos (Simulaciones)\
En esta podemos encontrar pruebas ejecutadas para verficar el comportamiento del modelo.

4. Paquetes (MYS.mo)\
Se ha creado un paquete para cargar todos los bloques, simulaciones y ejemplos de uso. 
En este pauqete se pueden encontrar:
    - DiscBlock: Describe el comportamiento de un disco que gira sobre su eje. 

    - NutationBlock: Describe el comportamiento del gyroscopio con un unico grado de libertad.

    - SpringBlock: Caracteriza el comportamiento del muelle.

    - AirBlock: Caracteriza el comportamiento del fluido.

    - inputBlock: Permite introducir valores.

## Instalación y uso del modelo
Para la instalación y uso del paquete de bloques desarrollado se debe cargar la libreria paquete y simular los test del paquete.

![Sistema](./Imagenes/Sistema.png "Imagen del sistema")

##  Requisitos de intalación
Para poder instalar el modelo se debe disponer de acceso al paquete MYS.mo.


