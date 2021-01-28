import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> asyncSnapshot) {
        return ListView(
          children: _listaItems(asyncSnapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      Widget tempWidget = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightGreen),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(tempWidget)..add(Divider());
    });
    return opciones;
  }
}
