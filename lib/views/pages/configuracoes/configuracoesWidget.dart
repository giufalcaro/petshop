import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class configuracoesWidget extends StatefulWidget {
  const configuracoesWidget({Key? key}) : super(key: key);

  @override
  State<configuracoesWidget> createState() => _configuracoesWidgetState();
}

class _configuracoesWidgetState extends State<configuracoesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YT"),
      ),
    );
  }
}
