import 'package:flutter/material.dart';
import '../model/contato.dart';
import 'add_contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Contato> contatos = [
    Contato("A", "a@gmail.com"),
    Contato("B", "b@gmail.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda")
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print(contatos[index]);
            },
          );
        },
          itemCount: contatos.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AddContact();
            }));

          },
          child: const Icon(Icons.add)
          ),
    );
  }
}
