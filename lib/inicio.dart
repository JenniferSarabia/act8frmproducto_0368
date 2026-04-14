import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD), // Azul muy claro
      appBar: AppBar(
        title: Text('Urba & Flow - Store'),
        backgroundColor: Color(0xFF0D47A1), // Azul profundo
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.checkroom, size: 80, color: Color(0xFF1565C0)),
            SizedBox(height: 30),
            _botonMenu(context, 'Capturar Producto', Icons.add_business, '/captura'),
            SizedBox(height: 20),
            _botonMenu(context, 'Ver Inventario', Icons.inventory_2, '/ver'),
          ],
        ),
      ),
    );
  }

  Widget _botonMenu(BuildContext context, String texto, IconData icono, String ruta) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1976D2),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      icon: Icon(icono, color: Colors.white),
      label: Text(texto, style: TextStyle(fontSize: 18, color: Colors.white)),
      onPressed: () => Navigator.pushNamed(context, ruta),
    );
  }
}