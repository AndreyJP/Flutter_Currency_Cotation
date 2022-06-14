import 'package:flutter/material.dart';

AppBar appBar(String texto) {
  return AppBar(
    leading: Icon(Icons.currency_exchange_rounded),
    title: Text('Cotação de Moedas - ' + texto),
    backgroundColor: Colors.black54,
  );
}
