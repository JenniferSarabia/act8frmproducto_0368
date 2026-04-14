import 'package:flutter/material.dart';
import 'diccionario_producto.dart';

class VerProducto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventario Urba & Flow'), backgroundColor: Color(0xFF0D47A1)),
      body: datosProducto.isEmpty
          ? Center(child: Text("No hay productos registrados."))
          : ListView.builder(
              itemCount: datosProducto.length,
              itemBuilder: (context, index) {
                int key = datosProducto.keys.elementAt(index);
                var p = datosProducto[key]!;
                return Card(
                  margin: EdgeInsets.all(10),
                  color: Color(0xFFBBDEFB),
                  child: ListTile(
                    leading: CircleAvatar(child: Text(p.id.toString())),
                    title: Text(p.nombre, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Categoría: ${p.categoria}"),
                    trailing: Text("\$${p.precio}", style: TextStyle(color: Colors.green[800], fontSize: 18)),
                  ),
                );
              },
            ),
    );
  }
}