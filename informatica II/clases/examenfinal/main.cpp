#include "mapa.hh"
#include "mundo.hh"

#include <iostream>
#include <string>
#include <vector>

int main() {

    int longitud = 20;
    int latitud = 10;
    Terreno** terreno = new Terreno*[longitud];

    for(int i = 0; i < longitud; i++) {

        terreno[i] = new Terreno[latitud];

        for(int j = 0; j < latitud; j++) {

            if(j % 2 == 0) {

                terreno[i][j] = Terreno::TierraLibre;
            }
            else {
                terreno[i][j] = Terreno::Mar;
            }
        }
    }

    std::string** paises = new std::string*[longitud];

    for(int i = 0; i < longitud; i++) {

        paises[i] = new std::string[latitud];
    }

    std::string** terrenos = paises;

    Mapa mapa(terreno, longitud, latitud);
    Mundo mundo(mapa, paises, terrenos);

    // El siguiente código no forma parte de las instrucciones, es algo extra que decidí hacer.
    // Es un juego en el que un país puede agregar o quitar terrenos.

    std::cout << "\nBienvenido al Planeta Tierra! A continuacion se presenta la disponibilidad de terreno en todo el mundo:\n";
    std::cout << "Recuerda que O = Libre, X = Ocupado y ~ = Mar...\n\n";

    mundo.imprimir();

    int acciones = 0;

    while(acciones < 10) {

        std::string pais = "";
        std::cout << "\nEscribe el nombre del pais: ";
        std::cin >> pais;

        int coordenadaX = 0;
        int coordenadaY = 0;
        std::cout << "\nHola " << pais << ", en que terreno estas interesado?";
        std::cout << "\nEscribe la coordenada 'x': ";
        std::cin >> coordenadaX;
        std::cout << "Escribe la coordenada 'y': ";
        std::cin >> coordenadaY;

        std::string accion = "";
        std::cout << "\nPerfecto, deseas comprarlo o venderlo? ";
        std::cout << "\nSi quieres comprarlo, responde 'agregar'. Si quieres venderlo, responde 'quitar': ";
        std::cin >> accion;

        if(accion == "agregar") {

            mundo.agregar(pais, coordenadaX, coordenadaY);
            mundo.imprimir();
            acciones++;
        }
        else if(accion == "quitar") {

            mundo.quitar(pais, coordenadaX, coordenadaY);
            mundo.imprimir();
            acciones++;
        }
        else {
            std::cout << "\nEsa accion no es valida\n";
            acciones++;
        }
    }
}