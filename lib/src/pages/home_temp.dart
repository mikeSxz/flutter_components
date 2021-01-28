import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp')),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> list = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text("Cualquier subtitle"),
            leading: Icon(Icons.wallet_travel),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
