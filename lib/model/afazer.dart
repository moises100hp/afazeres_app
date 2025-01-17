import 'package:flutter/material.dart';


class Afazer extends StatelessWidget {
  String _afazerNome;
  String _afazerDataCriado;
  int _id;

  Afazer(this._afazerNome, this._afazerDataCriado);

  Afazer.map(dynamic obj) {
    this._afazerNome = obj["nome"];
    this._afazerDataCriado = obj["data"];
    this._id = obj["id"];
  }

  String get afazerNome => _afazerNome;
  String get afazerDataCriado => _afazerDataCriado;
  int get id => _id;

  Map<String, dynamic> toMap() {
    var mapa = Map<String, dynamic>();
    mapa["nome"] = _afazerNome;
    mapa["data"] = _afazerDataCriado;

    if (id != null) {
      mapa["id"] = _id;
    }

    return mapa;

  }

  Afazer.fromMap(Map<String, dynamic> mapa) {
    this._afazerNome = mapa["nome"];
    this._afazerDataCriado = mapa["data"];
    this._id = mapa["id"];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_afazerNome,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.9
          ),),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: Text("$afazerDataCriado",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 11.5,
            fontStyle: FontStyle.italic
          ),
          ),
        )
        ],
      ),
    );
  }
}
