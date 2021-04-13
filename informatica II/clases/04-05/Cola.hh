#pragma once

#include "Lista.hh"

class Cola : public Lista {

    public:

    Cola(int i);

    ~Cola();

    void queue(int valor);

    int dequeue();
};