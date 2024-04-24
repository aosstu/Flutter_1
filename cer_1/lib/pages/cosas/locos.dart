import 'package:flutter/material.dart';
import 'package:cer_1/widgets/contratos_card.dart'; // Asegúrate de importar correctamente el archivo GameCard.dart

class Contratoss {
  static List<Widget> generarContratos(
      String asesinoSeleccionado, List<dynamic> asesinos) {
    List<Widget> listaContratos = [];

    // Buscar el asesino seleccionado en la lista de asesinos
    Map<String, dynamic>? asesino = asesinos.firstWhere(
        (asesino) => asesino['nombre'] == asesinoSeleccionado,
        orElse: () => null);

    if (asesino != null) {
      List<dynamic> contratos = asesino['contratos'];

      // Crear un GameCard para cada contrato y añadirlo a la lista
      for (var contrato in contratos) {
        String nombreContrato = contrato['nombre'];
        String fotoContrato = contrato['foto'];

        listaContratos
            .add(GameCard(nombre: nombreContrato, foto: fotoContrato));
      }
    }

    return listaContratos;
  }
}
