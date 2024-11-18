# **Gyroscopio de un grado de libertad** : Sensor de velocidad e integrador.

Módelo de un sensor basado en el comportamiento de un gyroscopio de un solo grado de libertad.

---

## Descripción del proyecto
Para este proyecto hemos desarrollado el modelo de un sensor basado en el comportamiento de un giroscopio de un solo grado de libertad. Este tipo de dispositivo nos permite medir el angulo de entrada (Gamma) a partir del angulo del eje de salida.   

Para ello disponemos de la siguiente ecuación: 

$$ I*\alpha'' + Kv*\alpha' + Km*\alpha = H*\gamma'$$

donde el angulo de salida se representa con alpha y gamma prima la velocidad del angulo de entrada.

## Descripción de los modelos y componentes
Para llevar acabo la validación del modelo hemos desarrollado los siguientes elementos.

1. Paquetes (MYS.mo)\
Se ha creado un paquete para cargar todos los bloques, simulaciones y ejemplos de uso. 
En este paquete se pueden encontrar los siguientes bloques:

    - DiscBlock: Describe el comportamiento de un disco que gira sobre su eje.
    - SensorBlock: Describe el comportamiento del sensor propocionandonos un angulo de salida (Pickoff angle).    
    - DCMotor: Caracteriza el comportamiento del moto que hace girar el disco.
    - inputBlock: Permite introducir valores para realizar pruebas.

Por otra parte disponemos de un ejemplo de sistema completo (Example.mo), el cual permite visualizar un diagrama de bloques completo del sistema en un ejemplo que permite medir la velocidad de giro a través del angulo de salida.

De la misma forma disponemos del un ejemplo (Velocidad_Giro.mo) el cual mide la velocidad de giro y un ejemplo de integrador que calcula la integral de lav velocidad de entrada.

![Ejemplo de uso de los bloques](./Imagenes/Velocidad_Giro.png)
## Instalación y uso del modelo
Para la instalación y uso del paquete de bloques desarrollado se debe cargar el paquete MYS.mo y simular el ejemplo del paquete.

##  Requisitos de intalación
Para poder instalar el modelo se debe disponer de acceso al paquete MYS.mo y al software OMEdit.

> [!NOTE]
> El modelo y las simulaciones se han realizado de acuerdo a los concpetos teóricos expuestos en el texto "Modern Inertial Technology: Navigation, Guidance and Control."
