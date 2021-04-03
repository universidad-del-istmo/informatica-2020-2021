
class Espacio2d;

int main(int argc, char** argv) {

    Espacio2d espacio;

    // Esto imprime 0 a que se reserva la memoria automaticamente
    std::cout << espacio[1.5][3.14]

    espacio[2.7][5.67] = 8.5
    espacio[2.7][5.88] = 7.6
    espacio[68.2][66.2] = 87;

    float* busqueda = new float[3];

    /*
    Este metodo coloca 8.5, 7.6 y 0 en el array "busqueda"
    */
    espacio.buscar(2.8, 5, 3, busqueda, 3);
}