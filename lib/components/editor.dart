import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String placeholder;
  final IconData icone;

  Editor({required this.controlador, required this.rotulo, required this.placeholder, this.icone = Icons.account_balance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
          icon: Icon(icone),
          labelText: rotulo,
          hintText: placeholder,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}