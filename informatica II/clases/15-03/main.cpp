#include <iostream>

#include "Lista.hh"

int main(int argc, char** argv) {

    Lista l(1, new Lista(2, new Lista(3)));

    std::cout << l.to_string() << "\n";
    std::cout << l.largo() << "\n";

    std::cout << "el elemento 1 es " << l[12] << "\n";
}