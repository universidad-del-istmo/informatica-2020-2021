# Laboratorio #6
## Formalidades
- Fecha de entrega: Jueves 11 de Febrero, 2021 @ 11:59 pm
- Grupos de 2 (o 3 en casos especiales)
- Modo de calificación: Presentación

## Instrucciones
Resuelva los ejercicios que se encuentran a continuación. El laboratorio sera calificado mediante una presentación al profesor. Uno de los integrantes sera seleccionado aleatoreamente para presentar el trabajo. El estudiante seleccionado debe explicar el codigo al profesor asi como resolver dudas del profesor.

### Ejercicio 1

Implemente una clase que tenga el siguiente comportamiento:

1. La instancia de la clase observa todos los mensajes que estan llegando a Quaternion.
2. Espera hasta que haya un mensaje que empieze con: "Emitir pregunta: \<pregunta\>" donde \<pregunta\> es cualquier texto arbitrario.
3. Luego que la pregunta haya sido emitida, esta clase busca texto que empieze con: "Responder pregunta: \<respuesta\>" donde \<respuesta\> es texto arbitrario que contiene la respuesta a la pregunta.
4. La clase debe recolectar todas las respuestas que se emitan a una pregunta y guardar una copia de todas las respuestas.
5. La clase espera a que aparezca el texto "Finalizar pregunta". Al suceder este evento, la clase debe imprimir todas las respuestas que se emitieron a la pregunta que se emitio asi como el texto de la pregunta.