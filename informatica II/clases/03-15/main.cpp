#include <iostream>

#include "Lista.hh"

int main() {

    Lista l(1, new Lista(2, new Lista(3)));

    std::cout << l.to_string() << "\n";
    std::cout << l.largo() << "\n";

    // Se puede usar este std::cout gracias al operator[].
    
    std::cout << "El elemento 1 es " << l[1] << "\n";
}