import 'package:flutter/material.dart';

class MiFormulario1 extends StatefulWidget {
  const MiFormulario1({super.key});

  @override
  MiFormProductos createState() {
    return MiFormProductos();
  }
}

class MiFormProductos extends State<MiFormulario1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su ID",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff2f1913),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, escriba el ID';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un ID valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el nombre",
                labelText: "Nombre",
                prefixIcon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el nombre.';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un nombre valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su precio",
                labelText: "Precio",
                prefixIcon: Icon(
                  Icons.money,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el precio';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un precio valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese la descripción",
                labelText: "Descripción",
                prefixIcon: Icon(
                  Icons.assignment,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente la descripción';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce una descripción valida";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese la cantidad",
                labelText: "Cantidad",
                prefixIcon: Icon(
                  Icons.dynamic_feed_rounded,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese la cantidad.';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce una cantidad valida";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese la categoría",
                labelText: "Categoría",
                prefixIcon: Icon(
                  Icons.category_rounded,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente la categoría';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce una categoría valida";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su paquete",
                labelText: "Paquete",
                prefixIcon: Icon(
                  Icons.grid_view_rounded,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el paquete';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un paquete valido";
              }
              return null;
            },
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 135.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('¡Formulario Enviado!'),
                      content: const Text(
                          'Tú información fue enviada correctamente.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Aceptar'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: TextButton.styleFrom(
                  foregroundColor: const Color(0xfff2f2f2),
                  backgroundColor: const Color(0xffb50303)),
              child: const Text(
                "Enviar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
