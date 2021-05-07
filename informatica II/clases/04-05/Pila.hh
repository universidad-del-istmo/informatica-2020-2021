#pragma once

#include "Lista.hh"

class Pila : public Lista {

    public:

    Pila(int i);
    ~Pila();

    void push(int valor);
    int pop();
}; 