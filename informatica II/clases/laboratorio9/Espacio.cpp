#include <iostream>
#include <cmath>
#include <stdlib.h>

#include "Espacio.hh"

Punto::Punto(float x, float y) : _x(x), _y(y) {}

Espacio::Espacio(std::vector<float> indicesX, std::vector<float> indicesY, std::vector<std::vector<float>> valores)
    : _indicesX(indicesX)
    , _indicesY(indicesY)
    , _valores(valores) {}

float Punto::getX() {

    return _x;
}

float Punto::getY() {

    return _y;
}

float& Espacio::operator[](Punto p) {

    int t1 = _indicesX.size();
    int t2 = _indicesY.size();

    for(int i = 0; i < t1; i++) {

        if(_indicesX[i] == p.getX()) {

            for(int j = 0; j < t2; j++) {

                if(_indicesY[j] == p.getY()) {

                    return _valores[i][j];
                }
            }
        }
    }

    for(int j = 0; j < t2; j++) {

        if(_indicesY[j] == p.getY()) {

            _indicesX.push_back(p.getX());
            return _valores[t1][j] = 0.0;
        }
        else {

            _indicesY.push_back(p.getY());
            return _valores[j][t2] = 0.0;
        }
    }

    _indicesX.push_back(p.getX());
    _indicesY.push_back(p.getY());
    return _valores[p.getX()][p.getY()] = 0.0;
}

float Espacio::distancia(float x1, float y1, float x2, float y2) {

    float resultado = sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2));
    return resultado;
}

void Espacio::seleccionar(float x, float y, float r, std::vector<float>& arreglo, int tamano) {

    int t1 = _indicesX.size();
    int t2 = _indicesY.size();

    for (int i = 0; i < t1; i++) {

        for (int j = 0; j < t2; j++) {

            float d = distancia(x, y, _indicesX[i], _indicesY[j]);

            if (d <= r) {

                arreglo.push_back(_valores[i][j]);
            }
        }
    }
}

void Espacio::trasladar(float mx, float my) {

    for(int i = 0; i < _indicesX.size(); i++) {

        for(int j = 0; j < _indicesY.size(); j++) {

            _valores[i + mx][j + my];
        }
    }
    return;
}