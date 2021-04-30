#include <iostream>
#include <string>

#include "Array.hh"

int main() {

    Array<int> array(5);

    array[0] = 5;
    // array[1] = "hola";

    std::cout << "array[0] = " << array[0] << "\n";

    Array<std::string> strArray(3);

    strArray[1] = "Algun string";

    std::cout << "strArray[1] = " << strArray[1] << "\n";

    std::cout << "Existe: " << array.existe(5) << "\n";

    Array<Vector> vecs(3);

    vecs[0] = Vector(1,4);
    Vector v2(1,1);

    if(!vecs.existe(v2)) {
        std::cout << "No existe (1,1) \n";
    }
}