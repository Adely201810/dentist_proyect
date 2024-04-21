import 'package:flutter/material.dart';

void main() {
  runApp(const VistaGM());
}

class VistaGM extends StatelessWidget {
  const VistaGM({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "GM",
      home: GM(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GM extends StatefulWidget {
  const GM({super.key});

  @override
  State<GM> createState() => _GMState();
}

class _GMState extends State<GM> {
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
          "Gestion de Material",
          style: TextStyle(
            fontFamily:"LatoBlack",
              fontSize: 30.0,
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFFEB5FF),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFFEB5FF),
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(34.0),
             child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para el botón "Añadir Material Comprado"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Prototipo Proyecto 4to Semestre Final.png', 
                        width: 40,
                        height: 40, 
                      ),
                      const SizedBox(
                          width: 10), 
                      const Text(
                        'Añadir Material Comprado',
                        style: TextStyle(
                          fontFamily:"Lato",
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {
                    // Acción para el botón "Consultar Material"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Prototipo Proyecto 4to Semestre Final (1).png', 
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                          width: 10),
                      const Text(
                        'Consultar Material',
                        style: TextStyle(
                          fontFamily:"Lato",
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
          ),
        ],
      ),
    );
  }
}
