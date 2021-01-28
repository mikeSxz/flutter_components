import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: !_bloquearCheckBox
          ? (valor) {
              print(valor);
              setState(() {
                _valorSlider = valor;
              });
            }
          : null,
    );
  }

  _crearImagen() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage(
          'https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fbatman-arkham-knight%2FEGS_WB_Batman_Arkham_Knight_G1_1920x1080_19_0911-1920x1080-1d69e15f00cb5ab57249f208f1f8f45d52cbbc59.jpg?h=1080&resize=1&w=1920'),
      fadeInDuration: Duration(milliseconds: 200),
      // height: 300.0,
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   onChanged: (value) {
    //     setState(() {
    //       _bloquearCheckBox = value;
    //     });
    //   },
    //   value: _bloquearCheckBox,
    // );
    return CheckboxListTile(
      title: Text('Bloquear'),
      onChanged: (value) {
        setState(() {
          _bloquearCheckBox = value;
        });
      },
      value: _bloquearCheckBox,
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear'),
      onChanged: (value) {
        setState(() {
          _bloquearCheckBox = value;
        });
      },
      value: _bloquearCheckBox,
    );
  }
}
