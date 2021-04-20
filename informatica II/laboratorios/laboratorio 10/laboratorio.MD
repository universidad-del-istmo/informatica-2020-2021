# Laboratorio #10
## Formalidades
- Fecha de entrega: Jueves 22 de Abril, 2021 @ 11:59 pm
- Grupos de 2 (o 3 en casos especiales)
- Modo de calificación: Presentación

# Problema #1

Defina una interfaz llamada *IColeccion*. Esta interfaz se utilizara para representar coleccions de numeros por lo cual debe tener los siguientes metodos:
* Un metodo para aceder los valores por indice
* Un metodo para obtener la cantidad de elementos en la coleccion
* Un metodo para borrar un numero en un indice en particular de la colleccion
* Un metodo para agregar un numero al final de la coleccion
* Un destructor virtual

# Problema #2

Implemente la interfa "IColeccion" con una clase llamada *ListaEncadenada*. Esta clase debe implementar los metodos de la clase *IColeccion* utilizando una lista encadenada para proveer la implementacion de todo los metoddos de *IColeccion*.

# Problema #3

Implemente la interfaz *IColeccion* con una clase llamada *ListaArreglo*. Esta clase debe implementar los metodos de la interfaz *IColeccion" utilizando un arreglo o vector ara proveer la funcionalidad de los metodos de *IColeccion*.

# Problema #4

Implemente un metodo llamado "buscar" que acepta una *IColeccion* como parametro y un numero. Debe retorna *true* si el numero existe dentro de la colleccion o *false* de lo contrario.

# Problema #5

Implemente un metodo llamado "agregarSiNoExiste" que acepta una *IColeccion* y un numero como parametro. Si el numero ya esta en la coleccion, no debe hacer nada el metodo. Si en numero no esta en la coleccion, lo debe agregar a la misma.

# Problema #6

Implemente un metodo llamado "ordenar". Este metodo debe aceptar una *IColeccion* y ordenar los numero de la misma de forma ascendiente.