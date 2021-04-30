#include <iostream>

#include "Mapa.hh"
#include "Vehiculo.hh"
#include "Jeep.hh"
#include "Pantanera.hh"
#include "Helicoptero.hh"

int main() {

    int alto = 5;
    int largo = 5;
    Terreno** terreno = new Terreno*[largo];

    for(int i = 0; i < largo; i++) {

        terreno[i] = new Terreno[alto];

        for(int j = 0; j < alto; j++) {

            if(j % 2 == 0) {

                terreno[i][j] = Terreno::Tierra;
            }
            else if(j % 3) {
                terreno[i][j] = Terreno::Agua;
            }
            else {
                terreno[i][j] = Terreno::Calle;
            }
        }
    }

    Mapa mapa(terreno, largo, alto);

    char transporte;

    std::cout << "Quieres manejar (h)elicoptero, (p)antanera o (j)eep? \n";
    std::cin >> transporte;

    if(transporte == 'h') {

        Helicoptero vehiculo(mapa);
        vehiculo.imprimir();

        char accion = '\0';

        while(accion != 'q') {

            std::cin >> accion;

            switch(accion) {

                case 'w':
                    vehiculo.mover(Direccion::Arriba);
                    break;
                case 's':
                    vehiculo.mover(Direccion::Abajo);
                    break;
                case 'a':
                    vehiculo.mover(Direccion::Izquierda);
                    break;
                case 'd':
                    vehiculo.mover(Direccion::Derecha);
                    break;
            }

            vehiculo.imprimir();
        }
    }
    else if(transporte == 'p') {

        Pantanera vehiculo(mapa);
        vehiculo.imprimir();

        char accion = '\0';

        while(accion != 'q') {

            std::cin >> accion;

            switch(accion) {

                case 'w':
                    vehiculo.mover(Direccion::Arriba);
                    break;
                case 's':
                    vehiculo.mover(Direccion::Abajo);
                    break;
                case 'a':
                    vehiculo.mover(Direccion::Izquierda);
                    break;
                case 'd':
                    vehiculo.mover(Direccion::Derecha);
                    break;
            }

            vehiculo.imprimir();
        }
    }
    else {

        Jeep vehiculo(mapa);
        vehiculo.imprimir();

        char accion = '\0';

        while(accion != 'q') {

            std::cin >> accion;

            switch(accion) {

                case 'w':
                    vehiculo.mover(Direccion::Arriba);
                    break;
                case 's':
                    vehiculo.mover(Direccion::Abajo);
                    break;
                case 'a':
                    vehiculo.mover(Direccion::Izquierda);
                    break;
                case 'd':
                    vehiculo.mover(Direccion::Derecha);
                    break;
            }

            vehiculo.imprimir();
        }
    }
}