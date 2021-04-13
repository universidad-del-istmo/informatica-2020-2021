#include "Espacio.hh"

#include <iostream>

Espacio::Espacio(float arg1, float arg2) {

    arreglo = new float[arg1 * arg2];
}

Espacio::~Espacio() {

    delete[] arreglo;
}

float& Espacio::operator[](float ix) {

    for(float i = ix; i > 0; i--) {

        
    }
}