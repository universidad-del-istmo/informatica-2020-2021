#include "mundo.hh"

#include <iostream>
#include <sstream>
#include <string>
#include <vector>

Mundo::Mundo(const Mapa& mapa, std::string**& propietarios, std::string**& terrenos)
    : _mapa(mapa)
    , _propietarios(propietarios)
    , _terrenos(terrenos) {}

void Mundo::imprimir() {

    for(int i = 0; i < _mapa.latitud(); i++) {

        for(int j = 0; j < _mapa.longitud(); j++) {

            if(_mapa[i][j] == Terreno::TierraLibre) {

                std::cout << "O";
            }
            else if(_mapa[i][j] == Terreno::TierraOcupada) {

                std::cout << "X";
            }
            else {

                std::cout << "~";
            }
        }

        std::cout << "\n";
    }
}

bool Mundo::rango(const int ancho, const int alto) {

    return
        ancho >= 0
        && alto >= 0
        && _mapa.longitud() >= ancho
        && _mapa.latitud() >= alto;
}

void Mundo::agregar(std::string pais, int x, int y) {

    bool disponibilidad = rango(x, y);

    if(disponibilidad == true) {

        if(_mapa[x][y] == Terreno::TierraLibre) {

            _mapa[x][y] = Terreno::TierraOcupada;
            _propietarios[x][y] = pais;
            std::cout << _propietarios[x][y] << "\n";
            std::stringstream texto;
            texto << "( " << x << ", " << y << " )";
            std::string coordenadas = texto.str();
            _terrenos[x][y] = coordenadas;
            std::cout << "\nFelicidades " << pais << ", ahora ese terreno es tuyo!\n\n";
        }
        else if(_mapa[x][y] == Terreno::TierraOcupada) {

            std::cout << "\nDisculpa " << pais << ", ese terreno ya esta ocupado.\n\n";
        }
        else if(_mapa[x][y] == Terreno::Mar) {

            std::cout << "\nOye " << pais << ", en esas coordenadas solo hay agua.\n\n";
        }
    }
    else {

        std::cout << "\nOye " << pais << ", ese terreno no forma parte del planeta Tierra.\n\n";
    }
}

void Mundo::quitar(std::string pais, int x, int y) {

    bool disponibilidad = rango(x, y);

    if(disponibilidad == true) {

        if(_mapa[x][y] == Terreno::TierraOcupada) {

            _mapa[x][y] = Terreno::TierraLibre;
            _propietarios[x][y] = "Libre";
            _terrenos[x][y] = "Libre";

            std::cout << "\nOperacion exitosa, has vendido tu terreno\n\n";
        }
        else if(_mapa[x][y] == Terreno::TierraLibre) {

            std::cout << "\nOye " << pais << ", ese terreno no le pertenece a nadie aun.\n\n";
        }
        else if(_mapa[x][y] == Terreno::Mar) {

            std::cout << "\nOye " << pais << ", en esas coordenadas solo hay agua.\n\n";
        }
    }
    else {

        std::cout << "\nOye " << pais << ", ese terreno no forma parte del planeta Tierra.\n\n";
    }
}

// El siguiente método retorna el número de terrenos que tiene cierto país.

int Mundo::total(std::string pais) {

    int conteo;

    for(int i = 0; i < _mapa.longitud()-1; i++) {

        for(int j = 0; j < _mapa.latitud()-1; j++) {

            if(_propietarios[i][j] == pais) {

                conteo++;
            }
        }
    }

    return conteo;
}