import 'package:flutter/material.dart';

void main() {
  runApp(const VistaAP());
}

class VistaAP extends StatelessWidget {
  const VistaAP({Key? key}) : super(key: key);

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
  const AP({Key? key}) : super(key: key);

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
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        centerTitle: true,
        title: const Text(
          "Venta",
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
            color: const Color(0xFFC1A8A3),
            width: double.infinity,
            height: double.infinity,
          ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(34.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Seleccionar Producto",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: "Producto 1",
                                  child: Text(
                                    "Producto 1",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: "Producto 2",
                                  child: Text(
                                    "Producto 2",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
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
                  ],
                ),
                const SizedBox(height: 25),
                Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón "Agregar al Carrito"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF09696B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Agregar al Carrito',
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
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5DBCE),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3, color: const Color(0xFF766D62)),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Venta $index"),
                        trailing: IconButton(
                          icon: Image.asset(
                            'images/Eliminar Icono.png',
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {},
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 80),
                Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    SizedBox(
      width: 150, // Ancho del TextField
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Total",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: 110, 
            child: TextField(
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
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Lato',
              ),
            ),
          ),
        ],
      ),
    ),
    const SizedBox(width: 2),
    SizedBox(
      width: 150, 
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          // Acción para el botón "Finalizar Compra"
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF09696B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 3,
        ),
        child: const Text(
          'Finalizar Compra',
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontFamily: "LatoBlack",
            color: Color(0xFFFEFEDF),
            fontSize: 16,
          ),
        ),
      ),
    ),
  ],
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