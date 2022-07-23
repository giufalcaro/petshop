import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/loja.dart';
import '../universalComponents/AppBarText.dart';

class DetalhesPrincipal extends StatelessWidget {
  const DetalhesPrincipal({Key? key, required this.loja}) : super(key: key);
  final Loja loja;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const AppBarText(text: "Detalhes da Loja"),
              backgroundColor: Colors.green,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: loja.imagemBanner != null
                    ? Image(
                        image: NetworkImage(loja.imagemBanner!),
                        fit: BoxFit.fill,
                      )
                    : Image(
                        image: NetworkImage(loja.imagem),
                        fit: BoxFit.fill,
                      ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(loja.nome,
                      style: const TextStyle(fontSize: 30, color: Colors.teal)),
                ),
                const Text("Primeira parte"),
                const Text("Segunda Parte"),
                const Text("Tercira Parte"),
                const Text("Quarta Parte")
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.white,
//     appBar: AppBar(
//       centerTitle: true,
//       title: const AppBarText(text: "Detalhes da Loja"),
//       flexibleSpace: loja.imagemBanner != null
//           ? Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(loja.imagemBanner!),
//                     fit: BoxFit.fill),
//               ),
//             )
//           : Container(),
//     ),
//     body: Center(
//       child: Column(
//         children: [
//           const SizedBox(height: 10),
//           Card(
//             margin: EdgeInsets.zero,
//             child: Container(
//               padding: const EdgeInsets.all(5),
//               decoration: const BoxDecoration(
//                   border: Border(
//                       bottom: BorderSide(color: Colors.white, width: 2))),
//               child: Column(
//                 children: <Widget>[
//                   ListTile(
//                     contentPadding: const EdgeInsetsDirectional.all(8),
//                     trailing: CircleAvatar(
//                       backgroundColor: Colors.transparent,
//                       radius: 50,
//                       backgroundImage: NetworkImage(loja.imagem),
//                     ),
//                     title: Text(
//                       loja.nome,
//                       style: const TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Text("Veterinario * 0,4 km"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text(loja.nome),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// @override
// Widget build(BuildContext context) {
//   return const Scaffold(
//     body: Center(
//       child: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             title: Text('Texto'),
//             backgroundColor: Colors.green,
//             expandedHeight: 350,
//             flexibleSpace: getI,
//           )
//         ],
//       ),
//     ),
//   );
// }
// }
