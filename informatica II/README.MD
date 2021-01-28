# Informatica II

Durante este curso se utilizra el codigo fuente del programa "Quaternion" la copia utilizada por el profesor la puede encontrar en (https://github.com/universidad-del-istmo/Quaternion)[https://github.com/universidad-del-istmo/Quaternion]. Instrucciones para compilar Quaternion estan en (https://github.com/quotient-im/Quaternion/blob/master/BUILDING.md)[https://github.com/quotient-im/Quaternion/blob/master/BUILDING.md].

## Requisitos

Para poder compilar Quaternion se necesitan las siguientes herramientas:
* (Visual Studio Community solo Windows)[https://visualstudio.microsoft.com/vs/community/]: Applicaciones de escritorio con C++
* (QT Creator)[https://www.qt.io/download-open-source?hsCtaTracking=9f6a2170-a938-42df-a8e2-a9f0b1d6cdce%7C6cb0de4f-9bb5-4778-ab02-bfb62735f3e5]
* (CMAKE)[https://cmake.org/]: Incluido con QT Creator
* Agregar las siguientes carpetas al path (Windows):
    - C:\Qt\5.15.2\mingw81_64\bin
    - C:\Qt\Tools\mingw810_64\bin
    - C:\Qt\Tools\CMake_64\bin

### Compilar en Windows
1. Crear carpeta build_dir en la carpeta de Quaternion
2. Abrir el archvo "CMakeLists.txt" y cambiar "add_executable(${PROJECT_NAME} WIN32 MACOSX_BUNDLE" a "add_executable(${PROJECT_NAME} MACOSX_BUNDLE" (aproximadamente en la linea 222)
3. `cmake -G "MinGW Makefiles" ..`
4. `cmake --build . --target all`

### Docmentacion
1. QT 5: (https://doc.qt.io/qt-5/search-results.html?q=QResizeEvent)[https://doc.qt.io/qt-5/search-results.html?q=QResizeEvent]
