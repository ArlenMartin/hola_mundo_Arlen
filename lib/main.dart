import 'package:flutter/material.dart';

// Punto de entrada de la aplicación
void main() {
  runApp(const MyApp());
}

// Widget principal de la app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta "Debug" de la app
      title: 'Hola Mundo Flutter',       // Título de la app
      theme: ThemeData(primarySwatch: Colors.blue), // Tema principal de la app
      home: const HomePage(),            // Pantalla principal de la app
    );
  }
}

// Pantalla principal
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior de la app
      appBar: AppBar(
        title: const Text('Hola Mundo en Flutter'), // Título de la barra
        centerTitle: true,                           // Centra el título
      ),
      // Cuerpo de la app
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente los widgets
          children: [
            // Texto de saludo personalizado
            const Text(
              '¡Hello, Arlen Martin Martinez!',
              style: TextStyle(
                fontSize: 25,            // Tamaño del texto
                fontWeight: FontWeight.bold, // Negritas
                color: Colors.pink,      // Color del texto
              ),
              textAlign: TextAlign.center, // Centrar el texto horizontalmente
            ),
            const SizedBox(height: 20), // Espacio entre el texto y la imagen
            // Imagen local de Kirby
            Image.asset(
              'assets/kirby.jpg',   // Ruta de la imagen en la carpeta assets
              width: 100,            // Ancho de la imagen
              height: 100,           // Alto de la imagen
            ),
          ],
        ),
      ),
    );
  }
}
