#pragma once

#include <iostream>
#include <string>
#include <vector>

class Punto {

    public:
    Punto(float x, float y);
    float getX();
    float getY();

    private:
    float _x;
    float _y;
};

class Espacio {

    public:
    Espacio(std::vector<float> indicesX, std::vector<float> indicesY, std::vector<std::vector<float>> valores);

    float& operator[](Punto p);

    float distancia(float x1, float y1, float x2, float y2);
    void seleccionar(float x, float y, float r, std::vector<float>& arreglo, int tamano);
    
    void trasladar(float mx, float my);

    private:
    std::vector<float> _indicesX;
    std::vector<float> _indicesY;
    std::vector<std::vector<float>> _valores;
};