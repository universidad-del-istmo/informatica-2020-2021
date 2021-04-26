#include <iostream>
#include <string>

#include "Array.hh"
#include "Dictionary.hh"

int main(int argc, char** argv) {

    Array<int> array(5);

    array[0] = 5;
    // array[1] = "hola";

    std::cout << "array[0] = " << array[0] << "\n";

    Array<std::string> strArray(3);

    strArray[1] = "algun string";

    std::cout << "strArray[1] = " << strArray[1] << "\n";

    if(array.existe(5)) {

        std::cout << "esto se deberia imprimir \n";
    }

    if(!strArray.existe("hola")) {
        std::cout << "Hola no existe\n";
    }

    Array<Vector> vecs(3);

    vecs[0] = Vector(1,4);
    Vector v2(1,4);

    if(!vecs.existe(v2)) {
        std::cout << "no existe (1,1) \n";
    }

    Dictionary<int, std::string> d;
    d.add(42, "hola");
    d.add(55, "adios");
    // o
    d[42] = "hola";

    std::cout << "El indice \"42\" es: " << d[42] << "\n";

    Dictionary<std::string, int> d2;
    d2["hola"] = 42;
}