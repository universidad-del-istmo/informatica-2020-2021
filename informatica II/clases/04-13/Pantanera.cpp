#include "Pantanera.hh"

Pantanera::Pantanera(const Mapa& mapa) : Vehiculo(mapa) {}

bool Pantanera::puedeNavegarHacia(const int i, const int j) {

    return
        Vehiculo::puedeNavegarHacia(i, j)
        && (_mapa[i][j] == Terreno::Agua || _mapa[i][j] == Terreno::Tierra);
}

bool Pantanera::posicionInicial(int& posX, int& posY) {

    for(int i = 0; i < _mapa.largo(); i++) {

        for(int j = 0; j < _mapa.alto(); j++) {

            if(puedeNavegarHacia(i, j)) {

                posX = i;
                posY = j;
                return true;
            }
        }
    }

    return false;
}