import 'package:flutter/material.dart';
import 'package:ibarra/formulario1.dart';
import 'package:ibarra/formulario2.dart';
import 'package:ibarra/formulario3.dart';
import 'package:ibarra/formulario4.dart';

void main() => runApp(const MiAplicacionDulceria());

class MiAplicacionDulceria extends StatelessWidget {
  const MiAplicacionDulceria({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Dulcería Alegrías',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MiPaginaInicial(titulo: 'Dulcería Alegrías'),
    );
  }
}

class MiPaginaInicial extends StatelessWidget {
  final String titulo;
  const MiPaginaInicial({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Dulcería Alegrías'),
            backgroundColor: const Color(0xffb80303),
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: const Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2700/2700461.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3126/3126647.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/554/554744.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2729/2729035.png'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  Text(
                    "Formulario Productos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario1(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario Clientes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario2(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario Empleados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario3(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario Paquetes Fiesta",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario4(),
                ],
              ),
            ],
          ),
        ));
  }
}
