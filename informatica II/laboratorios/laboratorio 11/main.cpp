
int main(int argc, char** argv) {
/*

Un arbol es una estructura de datos que consiste de un objeto el cual esta
conectado a otros dos objetos, llados derecho e izquierdo. Visualmente
se puede representar como:

                             1
                            / \
                           2   3
                          /   / \
                         4   5   6

Este arbol contiene los valores 1,2,3,4,5,6 pero notemos que:
* El numero "1" esta conectado al 2 y al 3
* El numero "2" al "4"
* El numero "4" a nada

El ejercicio #1 consiste en crear una clase generica llamada arbol que funcione
de la siguiente manera:
*/


    Arbol<int> iArbol(1);
    Arbol<std::string> sArbol("uno");
/*
            1

          "uno"
*/

    iArbol.add(2);
    sArbol.add("dos");

/*
            1
           /
          2

            "uno"
           /
      "dos" 
*/

    iArbol.add(3);
    sArbol.add("tres")

/*
            1
           / \
          2   3

           "uno"
           /    \
        "dos"   "tres"

*/

    iArbol.add(4);
    sArbol.add("cuatro");

/*
            1
           / \
          2   3
         /
        4

           "uno"
           /    \
        "dos"   "tres"
       /
    "cuatro"
*/

/*

Ejercicio #2: Implemente un metodo llado "exist" en la clase arbol. Este
metodo acepta un <T> y retorna true si existe o false de lo contrario.

*/

    if(iArbol.exists(1)) {

        std::cout << "Esto si se imprime! \n";
    }

    if(sArbol.exists("phi")) {
        std::cout << "Esto no se imprime! \n";
    }

/*

Ejercicio 3: Implemente un metodo llamado "filterGt". Este metodo
acepta un <T> y un <T*> y retorna un int. Este metodo debe crear
un arreglo nuevo y asignarselo al segundo parametro. En este
arreglo se colocan todos los valores que sean mayores que el primer
parametro. El metodo debe retornar como resultado la cantidad
de objetos que hay en el arreglo.
*/

    int* iResultados = nullptr;
    std::string* sResultados = nullptr;

    int qInts = iArbol.filterGt(2, iResultados);

    /*
    Esto imprime "3,4,"
    */

    for(int i = 0; i < qInts; i++) {
        
        std::cout << iResultados[i] << ",";
    }

    std::cout << "\n";
}