# Proyecto Final: Asistente Virtual Quaternion

## Formalidades

* Fecha de entrga: 29 de Abril
* Modo de calificación: Presentación y codigo
* Modalidad de trabajo: Grupos, maximo 3 personas
* Valor: 20 puntos netos

## Introducción

Cada dia, el chat se esta volvindo un medio más importante para comunicación entre humanos. Esto ha abierto la oportunidad a nuevas formas de interacción entre humanos y computadoras a traves de mensajes de texto. El objetivo de este proyecto es que ponga en practica sus habilidades de programación en C++ para crear un asistente virtual que permita almacenar y recuperar datos a traves del chat.

## Descripción

Su tarea es modificar Quaternion de tal forma que se introduzca una clase nueva que represente un asistente virtual, similar a la clase "StateMachine" que se estudio en clase. Esta clase debe inspeccionar todos los mensajes enviados en un *room* de Quaternion y permitir la siguiente funcionalidad:

* Un comando "almacenar" que acepta dos pedazos de texto. El primero se utiliara como indice y el segundo es el texto a ser guardado. Si un indice ya fue almacenado, se debe substituir por el valor nuevo. Por ejemplo:
    * "almacenar, tarea, Proyecto final de informatica II"
    * "almacenar, direccion, 42 calle 3-14 zona 19
    * "almacenar, direccion trabajo, 7 calle 8-90 zona 2"

* Un comando "recuperar" que acepta una palabra y la busca en el indice de palabras. En caso de encontrar dicha palabra, se debe responder un mensaje con el valor almacenado con dicho indice. Por ejemplo:
    * "recuperar, tarea"
        * Responde "Proyecto final de informatica II"
    * "recuperar, dia"
        * Responde "dia no es un indice conocido"

* Un comando "buscar" que debe aceptar una palabra y retorna todos los indices que tengan algún parecido a la misma. Por ejemplo:
    * "buscar, dir"
        * Responde "direccion, direccion trabajo"


En estos ejemplos se propuso un formato para los mensajes que procesa el asistent donde primero se coloca la operación y luego los parametros separados por comas. Sin embargo, usted debe utilizar su creatividad y desarrollar su propio formato. No tiene permitido utilizar el formato que se propuso en este documento.

## Presentación

El proyecto terminado se presentara durante el periodo de clase. El profesor evaluara el conocimiento que cada integrante tiene del codigo durante la presentación. La nota final del proyecto sera ponderada individualmente por el conocimiento que cada integrante tiene del codigo.

## Extras (Maximo 3 puntos netos)

* Utilizar HTML (u otras herramientas) para mostrar los mensajes creados por el asistente de forma más bonita
* Un comando extra para el asistente. El comando no debe ser sencillo. Para evitar malentendidos, se recomienda ponerse de acuerdo con el catedratico en una propuesta de comando antes de implementar el mismo.
* Implemente los comandos de tal forma que reconozcan que usuario envio los comandos y las respuestas son especificas para cada usuario. En otras palabras, si usuario 1 y usuario 2 almacenan un texto con el mismo indice, el asistente responde el texto que usuario 1 almaceno cuando usuario 1 solicita el texto.
