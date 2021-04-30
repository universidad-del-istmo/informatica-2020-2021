#include <iostream>
#include <string>

#include "Dictionary.hh"

int main() {

    std::vector<float> uno = {1.0, 2.0, 3.0, 4.0};
    std::vector<std::string> dos = {"Uno", "Dos", "Tres", "Cuatro"};

    Dictionary<float, std::string> ejemplo(uno, dos);

    std::cout << "El primer indice es: " << ejemplo[1.0] << "\n";

    ejemplo.agregar(5.0, "Cinco");

    std::cout << "Se agrego el valor: " << ejemplo[5.0] << "\n";
}