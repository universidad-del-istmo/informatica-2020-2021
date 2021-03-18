# Laboratorio #8
## Formalidades
- Fecha de entrega: Jueves 25 de Marzo, 2021 @ 11:59 pm
- Grupos de 2 (o 3 en casos especiales)
- Modo de calificación: Presentación

## Ejercicio 1

Elabore una clase llamada "Totito". Esta clase debe representar un juego de "totito" por lo cual debe tener lo siguiente:
* Una variable interna que reprsente el estado actual del tablero. Ie. donde hay "x", "o" y vacio
* Una variable interna que indique si es el turno del jugador 1 o jugador 2
* Un metodo que le permite colocar al jugador en turno una "x" o "o" en una casilla
    * Este metodo debe validar que la casilla este libre retornando "true" o "false" dependiendo si fue exitoso o no
    * En caso exitoso, este metodo dee cambiar el jugador que esta en turno
* Un metodo(s) para verificar si uno de los jugadors ha ganado el juego
* Un metodo para imprimir el estado actual del tablero

Para representar el tablero, primero se recomienda utilizar un *enum* para representar los tres possibles estados de una casilla (vacio, "x" o "o"). Luego puede crear un *array* de este *enum* el cual inicia con todas las posiciones vacias y se va modificando cada casilla según avanza el juego. Este tablero es possible representar con un arra de una o dos dimensiones. En caso que desee utiliar un array de dos dimensiones, se incluye un breve ejemplo de codigo en este laboratorio.

## Ejercicio 2

Elaborar un metodo main que permita jugar "Totito". Este debe crer una instancia del la clase del ejericio 1, mostrar el estado en cada turno y solicitar al jugador en turno que ingrese su movida en a terminal. Esto se debe repetir hasta que alguno de los jugadores gane.