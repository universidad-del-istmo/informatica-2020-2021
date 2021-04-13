#include <iostream>

#include "Lista.hh"
#include "Pila.hh"
#include "Cola.hh"

int main() {

    // Lista listaDeCua(1, new Lista(2, new Lista(3)));

    Pila piladeCua(27);

    int resultado;
    bool existe = piladeCua.tryGet(0, resultado);
    resultado = piladeCua[0];

    std::cout << "El numero es: " << resultado << "\n";

    // Imprime un número porque la computadora lee true/false como un número:

    std::cout << "El numero existe: " << existe << "\n\n";

    std::cout << "EJEMPLO DE PILA \n";

    piladeCua.push(1);
    piladeCua.push(2);
    piladeCua.push(3);

    std::cout << "El numero que salio fue: " << piladeCua.pop() << "\n";
    std::cout << "El numero que salio fue: " << piladeCua.pop() << "\n";
    std::cout << "El numero que salio fue: " << piladeCua.pop() << "\n";
    std::cout << "El numero que salio fue: " << piladeCua.pop() << "\n";

    std::cout << "\nEJEMPLO DE COLA \n";

    Cola coladeCua(42);

    coladeCua.queue(1);
    coladeCua.queue(2);
    coladeCua.queue(3);

    std::cout << "El numero que salio fue: " << coladeCua.dequeue() << "\n";
    std::cout << "El numero que salio fue: " << coladeCua.dequeue() << "\n";
    std::cout << "El numero que salio fue: " << coladeCua.dequeue() << "\n";
    std::cout << "El numero que salio fue: " << coladeCua.dequeue() << "\n";
}