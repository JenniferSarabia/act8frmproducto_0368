import 'package:flutter/material.dart';
import 'guardar_datos_agente.dart';

class CapturaProducto extends StatefulWidget {
  @override
  _CapturaProductoState createState() => _CapturaProductoState();
}

class _CapturaProductoState extends State<CapturaProducto> {
  final _formKey = GlobalKey<FormState>();
  final _nombreCtrl = TextEditingController();
  final _precioCtrl = TextEditingController();
  final _categoriaCtrl = TextEditingController();

  void _guardar() {
    if (_formKey.currentState!.validate()) {
      GuardarDatosAgente.registrarProducto(
        _nombreCtrl.text,
        double.parse(_precioCtrl.text),
        _categoriaCtrl.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('¡Producto guardado en Urba & Flow!'), backgroundColor: Colors.blue),
      );
      _nombreCtrl.clear();
      _precioCtrl.clear();
      _categoriaCtrl.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo Producto'), backgroundColor: Color(0xFF0D47A1)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text("Registro de Mercancía", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
              SizedBox(height: 20),
              _crearInput(_nombreCtrl, "Nombre de la prenda (ej. Hoodie Azul)", Icons.shopping_bag),
              _crearInput(_precioCtrl, "Precio", Icons.attach_money, teclado: TextInputType.number),
              _crearInput(_categoriaCtrl, "Categoría (Urban, Flow, Sport)", Icons.category),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _guardar,
                child: Text("GUARDAR EN DICCIONARIO"),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0D47A1), padding: EdgeInsets.all(15)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput(TextEditingController ctrl, String label, IconData icon, {TextInputType teclado = TextInputType.text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: ctrl,
        keyboardType: teclado,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.blue),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        validator: (value) => value!.isEmpty ? 'Campo obligatorio' : null,
      ),
    );
  }
}