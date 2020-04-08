import 'package:flutter/material.dart';

// Big Button Primary
class ButtonBigPrimary extends StatelessWidget {
  final GestureTapCallback onPressed;
  String titulo = '';

  ButtonBigPrimary({@required this.onPressed, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 360,
        height: 56,
        buttonColor: Colors.blueAccent,
        disabledColor: Colors.blueGrey,
        hoverColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(28.0),
        ),
        child: RaisedButton(
          child: Text(titulo, style: TextStyle(fontSize: 14),),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

