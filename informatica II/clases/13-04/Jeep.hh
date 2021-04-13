#include "Vehiculo.hh"

class Jeep : public Vehiculo {

    public:
    Jeep(const Mapa& mapa);

    protected:
    bool puedeNavegarHacia(const int i, const int j) override;
    bool posicionInicial(int& posX, int& posY) override;
};