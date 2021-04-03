# Laboratorio #9
## Formalidades
- Fecha de entrega: Jueves 15 de Abril, 2021 @ 11:59 pm
- Grupos de 2 (o 3 en casos especiales)
- Modo de calificación: Presentación

## Ejercicio 1

Cree una clase que representa un *espacio vectorial de dos dimensiones*. Esta clase debe tener el comportamiento a continuación:

* Implemente el *operador[]* de tal forma que se pueda modificar la magnitud de los vectores en el espacio. Tome las siguientes consideraciones:
    * Cada magnitud se accesa con **2** indices de tipo *float*
    * Si la pareja de indices siendo accesada **no existe**, se debe reservar nueva memoria y almacenar el valor "0" automaticamente.
    * Los valores almacenados son de tipo *float*

* Implemente un metodo llamado *seleccionar* que acepta 3 valores de tipo *float* llamados "x", "y" y "r". Este metodo tambien debe aceptar como parametro un array de floats y el tamaño del mismo. El metodo debe almacenar en el array todos los valores que se encuentren dentro del circulo que se paso como prametro. Si no hay suficientes valores para llenar el array, se colocan ceros en las demas posiciones.

* Implemente un metodo que se llame "trasladar" este metodo acepta 2 valores de tipo *float* y debe mover la ubicacion de todos los valors en el espacio vectorial por esa cantidad en el eje "x" y "y".