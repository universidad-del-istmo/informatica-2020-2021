#include "Vehiculo.hh"

#include <iostream>

Vehiculo::Vehiculo(const Mapa& mapa, const int posX, const int posY) : _mapa(mapa), _posX(posX), _posY(posY) {

}

bool Vehiculo::mover(const Direccion direccion) {

    int nuevoX = _posX;
    int nuevoY = _posY;

    switch(direccion) {

        case Arriba:
            nuevoY -= 1;
            break;
        case Abajo:
            nuevoY += 1;
            break;
        case Derecha:
            nuevoX += 1;
            break;
        case Izquierda:
            nuevoX -= 1;
            break;
        default:
            std::cout << "Direccion desconocida \n";
            return false;
    }

    if(puedeNavegarHacia(nuevoX, nuevoY)) {
        _posX = nuevoX;
        _posY = nuevoY;
        return true;
    }
    else {
        return false;
    }
}

bool Vehiculo::puedeNavegarHacia(const int x, const int y) {

    return
        x >= 0
        && y >= 0
        && _mapa.largo() > x
        && _mapa.alto() > y;
}

void Vehiculo::imprimir() {

    for(int j = 0; j < _mapa.alto(); j++) {
        for(int i = 0; i < _mapa.largo(); i++) {

            if(i == _posX && j == _posY) {
                std::cout << "X";
            }
            else {
                std::cout << _mapa[i][j];
            }
        }

        std::cout << "\n";
    }
}