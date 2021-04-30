#include "totito.hh"

#include "iostream"
#include "string"
#include "vector"

void Totito::jugada(char casilla) {

    if (jugador == j1) {
        for (int i = 0; i < pos.size(); i++) {
            if (pos[i] == casilla) {
                pos[i] = 'X';
                jugador = j2;
                return;
            }
        }
    }
    else {
        for (int i = 0; i < pos.size(); i++) {
            if (pos[i] == casilla) {
                pos[i] = 'O';
                jugador = j1;
                return;
            }
        }
    }

    std::cout << "Posicion no valida, vuelva a intentarlo.\n";
}


void Totito::victoria() {

    if (pos[1] == pos[2] && pos[2] == pos[3]) {

        estado = V;
        ganador = 1;
    }

    else if (pos[4] == pos[5] && pos[5] == pos[6]) {

        estado = V;
        ganador = 4;
    }

    else if (pos[7] == pos[8] && pos[8] == pos[9]) {

        estado = V;
        ganador = 7;
    }

    else if (pos[1] == pos[4] && pos[4] == pos[7]) {

        estado = V;
        ganador = 1;
    }

    else if (pos[2] == pos[5] && pos[5] == pos[8]) {

        estado = V;
        ganador = 2;
    }

    else if (pos[3] == pos[6] && pos[6] == pos[9]) {

        estado = V;
        ganador = 3;
    }
    else if (pos[1] == pos[5] && pos[5] == pos[9]) {

        estado = V;
        ganador = 1;
    }

    else if (pos[3] == pos[5] && pos[5] == pos[7]) {

        estado = V;
        ganador = 3;
    }

    else if (pos[1] != '1' && pos[2] != '2' && pos[3] != '3' 
            && pos[4] != '4' && pos[5] != '5' && pos[6] != '6' 
            && pos[7] != '7' && pos[8] != '8' && pos[9] != '9') {

        estado = E;
    }

    else {
        estado = P;
    }

    if (estado == V) {
        if (pos[ganador] == 'X') {
            std::cout << "JUGADOR 1 HA GANADO. FELICIDADES.\n";
        }
        else if (pos[ganador] == 'O') {
            std::cout << "JUGADOR 2 HA GANADO. FELICIDADES.\n";
        }
    }
    else if (estado == E) {
        std::cout << "EL JUEGO HA FINALIZADO EN EMPATE. SUERTE PARA LA PROXIMA.\n";
    }
  
}

void Totito::imprimir() {

    std::cout << "\n\nJUEGO DE TOTITO\n\n";

    std::cout << "Jugador 1 (X) --- Jugador 2 (O)\n\n";

    std::cout << "     |     |     \n";
    std::cout << "  " << pos[1] << "  |  " << pos[2] << "  |  " << pos[3] << "  \n";
    std::cout << "_____|_____|_____\n";
    std::cout << "     |     |     \n";
    std::cout << "  " << pos[4] << "  |  " << pos[5] << "  |  " << pos[6] << "  \n";
    std::cout << "_____|_____|_____\n";
    std::cout << "     |     |     \n";
    std::cout << "  " << pos[7] << "  |  " << pos[8] << "  |  " << pos[9] << "  \n";
    std::cout << "     |     |     \n\n";
}

int Totito::jugar() {

    if (estado == V || estado == E) {
        return 1;
    }
    else if (estado == P) {
        return 0;
    }
}