#include <iostream>
#include <string>
#include <vector>

#include "Espacio.hh"

int main () {

    std::vector<float> uno = {1.1, 2.2, 3.3, 4.4, 5.5};
    std::vector<float> dos = {6.6, 7.7, 8.8};
    std::vector<std::vector<float>> tres = {{1.0, 1.1, 1.2}, {1.3, 1.4, 1.5}, {1.6, 1.7, 1.8}, {1.9, 1.01, 1.02}, {1.03, 1.04, 1.05}};

    Espacio ejemplo(uno, dos, tres);

    // OPERADOR[]

    float ix1 = 3.3;
    float ix2 = 6.6;

    Punto prueba(ix1, ix2);

    std::cout << "\nEl float es: " << ejemplo[prueba] << "\n\n";

    // SELECCIONAR

    float x = 0.0;
    float y = 5.0;
    float r = 3.0;
    std::vector<float> arreglo;
    int tamano = 10;

    ejemplo.seleccionar(x, y, r, arreglo, tamano);

    for(int i = 0; i < arreglo.size(); i++) {

        std::cout << arreglo[i] << "\n";
    }

    // TRASLADAR

    float ix3 = 1.1;
    float ix4 = 6.6;

    Punto prueba2(ix3, ix4);

    std::cout << "\nEl primer indice es: " << ejemplo[prueba2] << "\n";

    ejemplo.trasladar(0.025, 0.085);

    float ix5 = 1.125;
    float ix6 = 6.685;

    Punto prueba3(ix5, ix6);

    std::cout << "Ahora el primer indice es: " << ejemplo[prueba3] << "\n";
}