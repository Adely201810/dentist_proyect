import 'package:flutter/material.dart';

void main() {
  runApp(const VistaGC());
}

class VistaGC extends StatelessWidget {
  const VistaGC({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "GC",
      home: GC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GC extends StatefulWidget {
  const GC({super.key});

  @override
  State<GC> createState() => _GCState();
}

class _GCState extends State<GC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        centerTitle: true,
        title: const Text(
          "Gestion de Categorias",
          style: TextStyle(
            fontFamily: "LatoBlack",
            fontSize: 28.0,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF766D62),
      ),
      body: Container(
        color: const Color(0xFFC1A8A3),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/Prototipo Proyecto Punto de Venta (3).png',
                  height: 300,
                  width: 300,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Acción para el botón "Añadir Categorias"
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFEFEDF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Prototipo Proyecto 4to Semestre Final.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Añadir Categorias',
                            style: TextStyle(
                              fontFamily: "Lato",
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                    ElevatedButton(
                      onPressed: () {
                        // Acción para el botón "Consultar Categorias"
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFEFEDF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Prototipo Proyecto 4to Semestre Final (1).png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Consultar Categorias',
                            style: TextStyle(
                              fontFamily: "Lato",
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}