import 'package:flutter/material.dart';
import 'inicio.dart';
import 'captura_producto.dart';
import 'ver_producto.dart';

void main() => runApp(UrbaFlowApp());

class UrbaFlowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urba & Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/captura': (context) => CapturaProducto(),
        '/ver': (context) => VerProducto(),
      },
    );
  }
}