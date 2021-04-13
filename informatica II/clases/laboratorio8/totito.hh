#pragma once

#include "string"
#include "vector"

enum Estado
{
    V,
    E,
    P
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
};