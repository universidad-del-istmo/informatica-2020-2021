#pragma once

#include <string>

class Espacio {

    public:
    Espacio(int arg1, int arg2);
    ~Espacio();

    float& operator[](const float ix);

    void seleccionar(float x, float y, float r, float );
    void trasladar(float valor1, float valor2);

    private:
    float** arreglo;
    float* filas;
};