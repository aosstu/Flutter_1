import 'package:flutter/material.dart';
import 'package:cer_1/widgets/contratos_card.dart';

class Contratoss {
  static List<Widget> generarContratos(
      String asesinoSeleccionado, List<dynamic> asesinos) {
    List<Widget> listaContratos = [];

    Map<String, dynamic>? asesino = asesinos.firstWhere(
        (asesino) => asesino['nombre'] == asesinoSeleccionado,
        orElse: () => null);

    if (asesino != null) {
      List<dynamic> contratos = asesino['contratos'];

      for (var contrato in contratos) {
        String nombreContrato = contrato['nombre'];
        String fotoContrato = contrato['foto'];
        String estadoContrato = contrato['estado'];
        String pagaContrato = contrato['paga'];
        String nacionalidad = contrato['nacionalidad'];
        String bandera = contrato['bandera'];
        listaContratos.add(ContratosCard(
          nombre: nombreContrato,
          foto: fotoContrato,
          estado: estadoContrato,
          bandera: bandera,
          nacionalidad: nacionalidad,
          paga: pagaContrato,
        ));
      }
    }

    return listaContratos;
  }
}
