#include "Vehiculo.hh"

class Jeep : public Vehiculo {

    public:
    Jeep(const Mapa& mapa, const int posX, const int posY);

    protected:
    bool puedeNavegarHacia(const int i, const int j) override;
};