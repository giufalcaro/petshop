import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contadorWidget extends StatefulWidget {
  const contadorWidget({Key? key}) : super(key: key);

  @override
  State<contadorWidget> createState() => _contadorWidgetState();
}

class _contadorWidgetState extends State<contadorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
