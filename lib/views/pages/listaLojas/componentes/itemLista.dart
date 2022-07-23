import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/loja.dart';
import '../../detalhesLoja/detalhesPrincipal.dart';

class CardLista extends StatelessWidget {
  final Loja loja;

  const CardLista({Key? key, required this.loja}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffb455A64),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            border: Border()),
        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.all(5),
              child: ListTile(
                contentPadding: const EdgeInsetsDirectional.all(8),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(loja.imagem),
                  radius: 50,
                ),
                trailing: const Icon(Icons.thumb_up_alt_outlined),
                title: Text(loja.nome),
                subtitle: Text(loja.descricao),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetalhesPrincipal(
                            loja: loja,
                          ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
