#include "Diccionario.hh"

#include <iostream>
#include <string>
#include <vector>

int main(int argc, char** argv) {

    Diccionario d;

    /*
    Si desea probar compilar el programa antes de empezar,
    debe comentar todo el codigo excepto "d.imprimir()"
    */

    /*
    EJERCICIO #1
    Cree un metodo en la clase diccionaro llamado "agregar" el cual permite
    guardar una palabra y una definicion de la palara. Si la palabra ya
    existe, actualiar la definicion.
    
    Se recomienda utilizar dos arreglos de
    "std::string" para guardar la palabra y definiion de tal forma que la
    definicion y palabra tengan el mismo indicie en ambos arreglos. En caso
    que los arreglos ya no puedan almacenar mas palabras y definiciones,
    se debe crear un arreglo nuevo con mayor tamaño, copiar las palabras y
    definiciones a este nuevo arreglo y borrar el arreglo anterior. A
    continuacion hay ejemplos del uso del metodo.
    */

    // d.agregar(std::string("carro"), std::string("vehiculo motorizado de 4 ruedas"));
    // d.agregar(std::string("avion"), std::string("Vehiculo volador mas pesado que el aire."));

    /*
    EJERCICIO #2
    Cree un metodo llamado "buscar" que acepta una palabra y busca su definicion Al no haber
    una definicion para la misma, retornar un string vacio.
    
    A continuacion se muestra
    como debe utilizarse dicho metodo.
    */

    // Imprime "vehiculo motorizado de 4 ruedas"
    // std::string definicionCarro = d.buscar(std::string("carro"));
    // std::cout << definicionCarro << "\n";

    /*
    EJERCICIO #3
    Cree un metodo llamado "enumerar". Este debe aceptar un caracter y retornar un valor de tipo std::string*.
    El arreglo de std::string retornado debe tener todas las palabras en el diccionaro que empiezan por la letra
    almacenada en el caracter pasado como parametro. El arreglo debe finalizar con un std::string vacio que indica
    que ya no hay mas palabras.
    
    En caso que no hayan palabras que empiezen con el caracter proveido, el arreglo debe
    contener nada mas un string vacio. A continuacion se muestra el uso.
    */

    // std::string* palabras = d.enumerar('c');

    // int i = 0;
    // std::string palabra = palabras[i];

    // while(palabra != std::string("")) {

    //     std::cout << "Palabra " << palabra << " empieza con letra 'a' \n";
    //}

    /*
    EJERCICIO #4
    Por ultimo, complete el metodo imprimir de tal forma que imprima tods las palabras
    del diccionario con su definicion.
    */

    d.agregar("Manzana", "Fruta roja");
    std::cout << "-----------\n";
    d.agregar("Pera", "Fruto del peral, comestible, de color verde, amarillo o encarnado");
    std::cout << "-----------\n";
    d.agregar("Manzana", "Fruto del manzano, comestible, de forma redondeada");
    std::cout << "-----------\n";
    d.agregar("Fresa", "Fruto de esta planta, redondo, carnoso y dulce, de color rojo escarlata");
    std::cout << "-----------\n";
    d.agregar("Pintura", "Sustancia o producto de textura liquida o espesa con que se da color a una cosa.");

    std::cout << "-----------\n";
    d.buscar("Naranja");
    std::cout << "-----------\n";
    d.buscar("Pera");

    std::cout << "-----------\n";
    d.enumerar('P');

    d.imprimir();
}