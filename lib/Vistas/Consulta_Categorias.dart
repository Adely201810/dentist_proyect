import 'package:flutter/material.dart';

void main() {
  runApp(const VistaCC());
}

class VistaCC extends StatelessWidget {
  const VistaCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CC",
      home: CC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CC extends StatefulWidget {
  const CC({Key? key}) : super(key: key);

  @override
  State<CC> createState() => _CCState();
}

class _CCState extends State<CC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Acción para el botón de retroceso
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        centerTitle: true,
        title: const Text(
          "Consulta Categorias",
          style: TextStyle(
            fontFamily: "LatoBlack",
            fontSize: 30.0,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF766D62),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC1A8A3), // Fondo con color deseado
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE5DBCE), // Color del Container
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: const Color(0xFF766D62)),
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("Categoria $index"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/Icono Editar.png',
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'images/Eliminar Icono.png',
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}