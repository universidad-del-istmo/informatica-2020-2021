#include "Mapa.hh"
#include "Vehiculo.hh"

int main(int argc, char** argv) {

    int alto = 5;
    int largo = 5;
    Terreno** terreno = new Terreno*[largo];

    for(int i = 0; i < largo; i++) {

        terreno[i] = new Terreno[alto];

        for(int j = 0; j < alto; j++) {
            terreno[i][j] = Terreno::Tierra;
        }
    }

    Mapa mapa(terreno, largo, alto);
}