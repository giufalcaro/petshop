import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/loja.dart';
import 'componentes/itemLista.dart';

class listaWidget extends StatefulWidget {
  const listaWidget({Key? key}) : super(key: key);
  @override
  State<listaWidget> createState() => _listaWidgetState();
}

class _listaWidgetState extends State<listaWidget> {
  List<Loja> lojas = [
    const Loja(
        nome: "CaoGato",
        descricao: "vetereinario",
        imagem:
            "https://wedologos.bladecdn.net/wp-content/uploads/2014/04/logo-pet-2.jpg",
        imagemBanner:
            "https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-pet-shop-promotion-cartoon-geometric-blue-banner-image_168717.jpg"),
    const Loja(
        nome: "Balu",
        descricao: "vedemos tudo para seu cao e gato",
        imagem:
            "https://img.elo7.com.br/product/original/3ADA392/logotipo-pet-shop-promocao-logotipo-cabelo.jpg"),
    const Loja(
        nome: "Rui veterianario",
        descricao: "serviços de tosa hotel e atendimento veterianairo",
        imagem:
            "https://static.vecteezy.com/ti/vetor-gratis/p3/4972592-dog-and-cat-logo-design-in-circle-pet-shop-logo-template-emblema-simbolo-icone-gr%C3%A1tis-vetor.jpg"),
    const Loja(
        nome: "lilicão",
        descricao: "clinica veterianaria para atendimento de pets",
        imagem:
            "https://img.freepik.com/vetores-premium/logotipo-da-loja-de-animais-de-estimacao-para-caes-e-gatos_152710-114.jpg?w=2000"),
    const Loja(
        nome: "lilico",
        descricao: "loja do lilicao",
        imagem:
            "https://blog.agenciadosite.com.br/wp-content/uploads/2017/02/logo-para-petshop-07.jpg")
  ];

  int counter = 0;
  void addItem() {
    counter++;
    setState(() {
      lojas.add(const Loja(
          nome: "nova loja",
          descricao: "loja do lilicao",
          imagem:
              "https://wedologos.bladecdn.net/wp-content/uploads/2014/04/logo-pet-2.jpg"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lojas proximas a voce", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xffb009688),
      ),
      body: ListView.builder(
        itemCount: lojas.length,
        padding: const EdgeInsets.all(3),
        itemBuilder: (context, index) {
          return CardLista(
            loja: lojas[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
