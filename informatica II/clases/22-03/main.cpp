#include <iostream>

#include "Lista.hh"

int main(int argc, char** argv) {

    Lista l(1, new Lista(2, new Lista(3)));

    std::cout << l.to_string() << "\n";
    std::cout << l.largo() << "\n";

    // Se puede usar este std::cout gracias al operator[].

    std::cout << "El elemento 1 es " << l[0] << "\n";

    // Aquí empiezan los cambios de la clase del 22-03...

    // Ejemplo de variables por valor:

    int byValue = 0;
    std::string sValue = "Hola mundo";

    std::cout << "byValue antes: " << byValue << ", " << sValue << "\n";

    l.byValue(byValue, sValue);

    std::cout << "byValue despues: " << byValue << ", " << sValue << "\n";

    // Ejemplo de variables por referencia:

    int byRef = 0;
    std::string sRef = "Hola mundo";

    std::cout << "byRef antes: " << byRef << ", " << sRef << "\n";

    l.byReference(byRef, sRef);

    std::cout << "byRef despues: " << byRef << ", " << sRef << "\n";

    // Ejemplo del método tryGet por referencia:

    int resultado;

    if(l.tryGet(1, resultado)) {

        std::cout << "El valor es: " << resultado << "\n";
    }
    else {
        std::cout << "El indice no existe \n";
    }

    // Ejemplo del método tryGet por valor:

    int x;

    l.tryGet(2, x);

    std::cout << "El valor de x es " << x << "\n";
    std::cout << "El valor de resultado es " << resultado << "\n";

    // Otros ejemplos:

    std::cout << "El indice 0 es: " << l[1] << "\n";

    l[1] = 42;

    std::cout << "El indice 0 es: " << l[1] << "\n";

    // Ejemplo del operator==:

    Lista l2 = l;
    //Lista l2(1, new Lista(2));
    //Lista l2(1, new Lista(2, new Lista(3, new Lista (4))));

    int ix = 1;

    std::cout << "Lista 1: " << l[ix] << "\n";
    std::cout << "Lista 2: " << l2[ix] << "\n";

    if(l == l2) {
        std::cout << "Son iguales \n";
    }
    else {
        std::cout << "No son iguales \n";
    }

    // Ejemplo del operator>:

    if(l > l2) {
        std::cout << "Es mayor \n";
    }
    else {
        std::cout << "No es mayor \n";
    }

}