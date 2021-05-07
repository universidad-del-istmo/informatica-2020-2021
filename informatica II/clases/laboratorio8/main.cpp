#include "totito.hh"

#include "iostream"
#include "string"
#include "vector"

int main() {

    Totito t;
    char lugar = '0';

    int jugador = 1;
    
    std::cout << "BIENVENIDOS AL JUEGO DE TOTITO.\n";
    std::cout << "Traido a ustedes por: Gabriel Cua y Luis Menendez.\n";

    std::cout << "A JUGAR!\n";

    while (t.jugar() == 0) {
        
        t.imprimir();
        std::cout << "Jugador " << jugador << ", ingresa donde quieres colocar tu pieza: ";
        std::cin >> lugar;
        std::cout << "\n";
        t.jugada(lugar);
        t.victoria();
        if (jugador == 1) {
            jugador = 2;
        }
        else if (jugador == 2) {
            jugador = 1;
        }
    }
}