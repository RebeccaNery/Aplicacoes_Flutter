import 'package:flutter/material.dart';

class ListarContatos extends StatefulWidget {
  const ListarContatos({super.key});

  @override
  State<ListarContatos> createState() => _ListarContatosState();
}

class _ListarContatosState extends State<ListarContatos> {
  final _contatoController = ContatoController();
  List<Contato> _contatos = [];

  @override
  void initState(){
    super.initState();
    setState(() {
      _contatos = _contatoController.getContatos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listagem dos Contatos")
      ),
      body: ListView.builder(itemCount: _contatos.length, itemBuilder: (context, index){
        return buildItemList(index);
      }),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CadastrarContato();
        }));
      },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  Widget buildItemList(index){
    return ListTile(
      leading: const Icon(Icons.person_2),
      title: Text(_contatos[index].nome),
      subtitle: Text(_contatos[index].email),
      trailing: const Icon(Icons.delete)
    );
  }

}
