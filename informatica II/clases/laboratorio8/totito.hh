#pragma once

#include "string"
#include "vector"

enum Estado
{
    V, // Victoria
    E, // Empate
    P // En progreso
};

enum Jugador
{
    j1,
    j2
};

class Totito
{
    public:
    void jugada(char lugar);
    void victoria();
    void imprimir();
    int jugar();
    
    private:
    Estado estado = P;
    Jugador jugador = j1;
    int ganador = 0;
    std::vector<char> pos = {'\0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
                             // Caracter nulo para usar las posiciones como son
};