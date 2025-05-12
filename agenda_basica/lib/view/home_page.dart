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
    Contato("A", "a@gmail.com")
    Contato("B", "b@gmail.com")
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
