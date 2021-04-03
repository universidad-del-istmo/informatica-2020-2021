#include "Diccionario.hh"

#include <iostream>
#include <string>
#include <vector>

void Diccionario::agregar(std::string palabra, std::string def) {

    for (int i = 0; i < vPalabras.size(); i++) {
        if (palabra == vPalabras[i]) {
            vPalabras.erase(vPalabras.begin()+i);
            vDef.erase(vDef.begin()+i);
        }
    }
    
    vPalabras.push_back(palabra);
    vDef.push_back(def);
    
    for(int i = 0; i < vPalabras.size(); i++) {
        std::cout << vPalabras[i] << " -> " << vDef[i] << "\n";
    }
}

void Diccionario::buscar(std::string palabraBuscar) {

    for (int i = 0; i < vPalabras.size(); i++) {
        if (palabraBuscar == vPalabras[i]) {
            std::cout << vPalabras[i] << " -> " << vDef[i] << "\n";
            existe = true;
        }
    }

    if (existe == false) {
        std::cout << palabraBuscar << " -> \n";
    }
}

void Diccionario::enumerar(char letra) {

    for (int i = 0; i < vPalabras.size(); i++) {
        std::string copia = vPalabras[i];
        if (copia[0] == letra) {
            vLetras.push_back(copia);
        }
    }

    vLetras.push_back("");

    std::cout << "Las palabras que empiezan con la letra " << letra << " son :\n";
    for (int i = 0; i < vPalabras.size(); i++) {
        std::cout << vLetras[i] << "\n";
    }
}

void Diccionario::imprimir() {

    std::cout << "Las palabras y sus definiciones son: \n";
    for (int i = 0; i < vPalabras.size(); i++) {
        std::cout << vPalabras[i] << " -> " << vDef[i] << "\n";
    }
}