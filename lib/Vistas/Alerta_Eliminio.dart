import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlertEli(),
    );
  }
}

class AlertEli extends StatelessWidget {
  const AlertEli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Eliminio'),
      ),
      backgroundColor: const Color(0xFFFEB5FF), 
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDeleteConfirmationDialog(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFF5FF), 
          ),
          child: const Text(
            'Eliminar Registro',
            style: TextStyle(color: Colors.black26), 
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Eliminar Registro',
            style: TextStyle(color: Colors.black, fontFamily:"Lato",), 
          ),
          content: const Text(
            '¿Esta seguro de eliminar este registro? Esta accion es irreversible.',
            style: TextStyle(color: Colors.black, fontFamily:"Lato",), 
          ),
          backgroundColor: const Color(0xFFFFF5FF), 
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Aquí iría la lógica para eliminar el registro
                Navigator.of(context).pop(); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFF5FF), 
              ),
              child: const Text(
                'Eliminar',
                style: TextStyle(color: Colors.black, fontFamily:"Lato",), 
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.black26, fontFamily:"Lato",), 
              ),
            ),
          ],
        );
      },
    );
  }
}
