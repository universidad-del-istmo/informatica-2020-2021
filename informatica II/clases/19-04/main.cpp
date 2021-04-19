#include <iostream>
#include <string>

#include "Array.hh"

int main(int argc, char** argv) {

    Array<int> array(5);

    array[0] = 5;
    // array[1] = "hola";

    std::cout << "array[0] = " << array[0] << "\n";

    Array<std::string> strArray(3);

    strArray[1] = "algun string";

    std::cout << "strArray[1] = " << strArray[1] << "\n";
}