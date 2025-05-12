import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  var _edtNum1 = TextEditingController();
  var _edtNum2 = TextEditingController();
  double? _resultado;
  String? _opcaoSelecionada = 'Somar'; //opcao inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            child: TextField(
              controller: _edtNum1,
              decoration: InputDecoration(
                labelText: "Primeiro número",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: TextField(
              controller: _edtNum2,
              decoration: InputDecoration(
                labelText: "Segundo número",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(8.0),
            child: Text("Operações:", style: TextStyle()),
          ),
          ListTile(
            title: Text("Somar"),
            leading: Radio<String>(
              value: "Somar",
              groupValue: _opcaoSelecionada,
              onChanged: (String? value) {
                setState(() {
                  _opcaoSelecionada = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("Subtrair"),
            leading: Radio<String>(
              value: "Subtrair",
              groupValue: _opcaoSelecionada,
              onChanged: (String? value) {
                setState(() {
                  _opcaoSelecionada = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("Multiplicar"),
            leading: Radio<String>(
              value: "Multiplicar",
              groupValue: _opcaoSelecionada,
              onChanged: (String? value) {
                setState(() {
                  _opcaoSelecionada = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("Dividir"),
            leading: Radio<String>(
              value: "Dividir",
              groupValue: _opcaoSelecionada,
              onChanged: (String? value) {
                setState(() {
                  _opcaoSelecionada = value.toString();
                });
              },
            ),
          ),
          ElevatedButton(
              onPressed: (){
                setState((){
                  double _num1 = double.parse(_edtNum1.text);
                  double _num2 = double.parse(_edtNum2.text);
                  switch (_opcaoSelecionada){
                    case "Somar":
                      _resultado = _num1 + _num2;
                      break;
                    case "Subtrair":
                      _resultado = _num1 - _num2;
                      break;
                    case "Dividir":
                      if (_num2 != 0){
                        _resultado = _num1 / _num2;
                      }else{
                        print("O denominador não pode ser igual a ZERO. Tente novamente.");
                      }
                      break;
                    case "Multiplicar":
                      _resultado = _num1 * _num2;
                      break;
                }});
              },
              child: Text("Calcular")
          ),
          SizedBox(height: 20.0),
          Text("Resultado: ${_resultado != null ? _resultado : ''}"),

        ],
      ),
    );
  }
}
