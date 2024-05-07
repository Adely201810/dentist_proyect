import 'package:flutter/material.dart';

void main() {
  runApp(const VistaAP());
}

class VistaAP extends StatelessWidget {
  const VistaAP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "AP",
      home: AP(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AP extends StatefulWidget {
  const AP({super.key});

  @override
  State<AP> createState() => _APState();
}

String? dropdownValue;

class _APState extends State<AP> {
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
          "Añadir Productos",
          style: TextStyle(
              fontFamily: "LatoBlack",
              fontSize: 30.0,
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF766D62),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC1A8A3),
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Nombre del producto",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFFEFEDF),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 10,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Categorias",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFEFEDF),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: DropdownButton<String>(
                                    iconSize: 55,
                                    isExpanded: true,
                                    underline: const SizedBox(),
                                    value: dropdownValue,
                                    items: const <DropdownMenuItem<String>>[
                                      DropdownMenuItem<String>(
                                          value: "Producto 0",
                                          child: Text(
                                            "Producto 0",
                                            style: TextStyle(
                                              fontFamily: "Lato",
                                              fontSize: 16,
                                            ),
                                          )),
                                      DropdownMenuItem<String>(
                                          value: "Producto 1",
                                          child: Text(
                                            "Producto 1",
                                            style: TextStyle(
                                              fontFamily: "Lato",
                                              fontSize: 16,
                                            ),
                                          )),
                                      DropdownMenuItem<String>(
                                          value: "Producto 2",
                                          child: Text(
                                            "Producto 2",
                                            style: TextStyle(
                                              fontFamily: "Lato",
                                              fontSize: 16,
                                            ),
                                          )),
                                    ],
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropdownValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Stock",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFFEFEDF),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 10,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Precio",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFFEFEDF),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 10,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 180),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón "Guardar"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF09696B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Imagen Guardar.png',
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'GUARDAR',
                              style: TextStyle(
                                fontFamily: "LatoBlack",
                                color: Color(0xFFFEFEDF),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
