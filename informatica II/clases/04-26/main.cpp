#include <iostream>
#include <map>
#include <memory>
#include <string>
#include <vector>

#include "Vector.hh"

void transfer(std::shared_ptr<Vector> elShared) {

    std::cout << "el shared es: " << elShared->to_string() << "\n";
}

class Dummy {

    public:
    std::shared_ptr<Vector> sVec;
};

int main() {

    /*std::vector<Vector> vecs;
    vecs.reserve(3);

    std::cout << vecs[0].x();

    vecs.push_back(Vector(1,1));
    vecs.push_back(Vector(1,2));
    vecs.emplace_back(1,3);

    std::cout << "valor en 2 es: " << vecs[2].x() << "," << vecs[2].y() << "\n";

    for(Vector& elemento : vecs) {
        std::cout << "El valor es: " << elemento.x() << ", " << elemento.y() << "\n";
        elemento = Vector();
    }

    for(Vector& elemento : vecs) {
        std::cout << "El valor es: " << elemento.x() << ", " << elemento.y() << "\n";
        //elemento = Vector();
    }

    std::map<std::string, Vector> mVecs;
    mVecs["hola"] = Vector(1,2);
    mVecs.emplace(
        std::piecewise_construct,
        std::forward_as_tuple("adios"),
        std::forward_as_tuple(1,3)
    );

    std::cout << "el indice 'hola' es " << mVecs["hola"].to_string() << "\n";
    std::cout << "el indice 'adios' es " << mVecs["adios"].to_string() << "\n";

    std::unique_ptr<Vector> uVec = std::make_unique<Vector>(2,3);
    std::unique_ptr<Vector> oVec;

    uVec.swap(oVec);

    std::shared_ptr<Vector> sVec = std::make_shared<Vector>(2,3);

    transfer(sVec);
    std::cout << "El shared " << sVec->to_string() << "\n";
    std::cout << "El unique es: " << oVec->to_string() << "\n";*/

    Dummy dummy;

    {
        std::shared_ptr<Vector> sp = std::make_shared<Vector>(1,2);
        dummy.sVec = sp;
    }

    std::cout << "El final \n";
}