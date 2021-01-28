import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle:
                Text('Aqui podemos validar como se ve el texto en una tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://3.bp.blogspot.com/-Ji_3Bhw0Jns/XMIlqoZAnEI/AAAAAAAAAbo/W1Cfz5MR51MtHb3cg0-I509R8FTLYtnHwCLcBGAs/s1600/clouds-country-daylight-371633.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Akgun texto para testear la tarjeta con imagen')),
        ],
      ),
    );

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0)),
            ]
            // color: Colors.red,
            ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ));
  }
}
