#include <iostream>

#include "Lista.hh"
#include "Pila.hh"

int main(int argc, char** argv) {

    //Lista l(1, new Lista(2, new Lista(3)));

    Pila p(42);

    int resultado;
    bool existe = p.tryGet(0, resultado);
    resultado = p[0];

    std::cout << "El numero es: " << resultado << "\n";
    std::cout << "El numero existe: " << existe << "\n";

    p.push(1);
    p.push(2);
    p.push(3);

    std::cout << "Valor 0 es:" << p[0] << "\n";

    p.eliminar(0);

    std::cout << "Pop! " << p.pop() << "\n";
    std::cout << "Pop! " << p.pop() << "\n";
}