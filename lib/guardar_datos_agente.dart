import 'diccionario_producto.dart';
import 'clase_producto.dart';

class GuardarDatosAgente {
  static void registrarProducto(String nombre, double precio, String categoria) {
    // Generar ID autonumérico basado en el tamaño del diccionario + 1
    int nuevoId = datosProducto.length + 1;
    
    Producto nuevo = Producto(
      id: nuevoId,
      nombre: nombre,
      precio: precio,
      categoria: categoria,
    );

    // Guardar en el diccionario
    datosProducto[nuevoId] = nuevo;
  }
}