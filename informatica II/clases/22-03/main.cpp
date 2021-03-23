#include <iostream>

#include "Lista.hh"

int main(int argc, char** argv) {

    Lista l(1, new Lista(2, new Lista(3)));

    std::cout << l.to_string() << "\n";
    std::cout << l.largo() << "\n";

    std::cout << "el elemento 1 es " << l[0] << "\n";

    int byValue = 0;
    std::string sValue = "hola mundo";

    std::cout << "by value before " << byValue << ", " << sValue << "\n";

    l.byValue(byValue, sValue);

    std::cout << "by value after " << byValue << ", " << sValue << "\n";


    int byRef = 0;
    std::string sRef = "hola mundo";

    std::cout << "by ref before " << byRef << ", " << sRef << "\n";

    l.byReference(byRef, sRef);

    std::cout << "by ref after " << byRef << ", " << sRef << "\n";


    int resultado;
    if(l.tryGet(1, resultado)) {

        std::cout << "El el valor es: " << resultado << "\n";
    }
    else {
        std::cout << "El indice no existe \n";
    }

    int x;
    l.tryGet(2, x);

    std::cout << "El valor de x es " << x << "\n";
    std::cout << "El valor de resultado es " << resultado << "\n";

    std::cout << "El indice 0 es: " << l[1] << "\n";

    l[1] = 42;

    std::cout << "El indic 0 es: " << l[1] << "\n";

    Lista l2 = l;
    int ix = 1;

    //l[ix] = 3;

    std::cout << "Lista 1: " << l[ix] << "\n";
    std::cout << "Lista 2: " << l2[ix] << "\n";


    if(l == l2) {
        std::cout << "son iguales \n";
    }
    else {
        std::cout << "no son iguales \n";
    }

    if(l > l2) {
        std::cout << "si es mayor \n";
    }
    else {
        std::cout << "no es mayor \n";
    }

}