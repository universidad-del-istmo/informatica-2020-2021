#include <iostream>

#include "Helicoptero.hh"
#include "Jeep.hh"
#include "Mapa.hh"
#include "Vehiculo.hh"

void manejar(IVehiculo vehiculo) {

    /*
    Para los curiosos que querian saber que se esta manejando,
    asi se hace...
    */
    Helicoptero* h = dynamic_cast<Helicoptero*>(&vehiculo);

    if(h != nullptr) {
        std::cout << "Es un helicoptero...\n";
    }
    else {
        std::cout << "No es un helicoptero...\n";
    }

    vehiculo.colocarVehiculo();
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

int main(int argc, char** argv) {

    int alto = 5;
    int largo = 5;
    Terreno** terreno = new Terreno*[largo];

    for(int i = 0; i < largo; i++) {

        terreno[i] = new Terreno[alto];

        for(int j = 0; j < alto; j++) {

            int ix = i + j;

            if(ix % 2 == 0){
                terreno[i][j] = Terreno::Tierra;
            }
            else if(ix % 3) {
                terreno[i][j] = Terreno::Calle;
            }
            else {
                terreno[i][j] = Terreno::Agua;
            }
        }
    }

    //std::cout << "Quiere manejar un (j)eep, un (h)elicoptero o (s)alir?"

    Mapa mapa(terreno, largo, alto);
    Jeep vehiculo(mapa);

    manejar(vehiculo);

    Helicoptero helicoptero(mapa);
    manejar(helicoptero);
}