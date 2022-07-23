import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshop_app/views/pages/configuracoes/configuracoesWidget.dart';
import 'package:petshop_app/views/pages/contador/contador.dart';
import 'package:petshop_app/views/pages/listaLojas/lista.dart';

class myNavBar extends StatefulWidget {
  const myNavBar({Key? key}) : super(key: key);

  @override
  State<myNavBar> createState() => _myNavBarState();
}

class _myNavBarState extends State<myNavBar> {
  int _paginaSelecionada = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _PaginaMenu = <Widget>[
    listaWidget(),
    configuracoesWidget(),
    contadorWidget(),
  ];

  void _opcaoClicada(int index) {
    setState(() {
      _paginaSelecionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _PaginaMenu.elementAt(_paginaSelecionada),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuraçoẽs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Contador',
          ),
        ],
        currentIndex: _paginaSelecionada,
        selectedItemColor: Colors.teal,
        onTap: _opcaoClicada,
      ),
    );
  }
}
