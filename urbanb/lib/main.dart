import 'package:flutter/material.dart';
import 'package:urbanb/inicio.dart';

void main()=> runApp(const DatosLocal());


class DatosLocal extends StatelessWidget {
  const DatosLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Prins(),
    );
  }
}

class Prins extends StatefulWidget {
  static var dart;

  const Prins({super.key});

  @override
  State<Prins> createState() => _PrinsState();
}

class _PrinsState extends State<Prins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'URBAN BURGER',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Main(context),
    );
  }
}

Widget Main(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Tittle(),
        Formulario(),
        const SizedBox(height: 20), // Espacio adicional
        Button(context), // Aquí se agregan los botones
      ],
    ),
  );
}

Widget Tittle() {
  return Container(
    alignment: Alignment.topCenter,
    padding: const EdgeInsets.only(top: 20), // Puedes ajustar el espaciado superior
    child: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'DATOS DE CONTACTO',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget Formulario() {
  return Container(
    
    padding: const EdgeInsets.all(16.0), // Espaciado 

    child: const Column(

      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'NOMBRE',
          ),
        ),

        SizedBox(height: 16.0), // Espaciado

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'DIRECCION',
          ),
        ),
        
        SizedBox(height: 16.0),

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TELEFONO',
          ),
        ),

        SizedBox(height: 16.0),

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nombre',
          ),
        ),
      ],
    ),
  );
}

Widget Button(BuildContext context) {

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribuye los botones uniformemente
    children: [
      ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 86, 253, 122), // Cambia el color del botón de cancelar
        ),
        child: const Text('Confirmar'),
      ),
      ElevatedButton(
        onPressed: ()=> {
          Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => inicio(), // Asegúrate de que inicio() retorna un Widget
      ),
    )
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 68, 68), // Cambia el color del botón de cancelar
        ),
        child: const Text('Cancelar'),
      ),
    ],
  );
}