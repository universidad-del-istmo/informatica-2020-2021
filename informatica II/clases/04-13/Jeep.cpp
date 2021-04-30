#include "Jeep.hh"

Jeep::Jeep(const Mapa& mapa) : Vehiculo(mapa) {}

bool Jeep::puedeNavegarHacia(const int i, const int j) {

    return
        Vehiculo::puedeNavegarHacia(i, j)
        && (_mapa[i][j] == Terreno::Tierra || _mapa[i][j] == Terreno::Calle);
}

bool Jeep::posicionInicial(int& posX, int& posY) {

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