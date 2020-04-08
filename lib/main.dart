import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_cadastro/widgets/button.dart';
import 'widgets/modal_bottom_sheet.dart';
import 'modais/modal_cancelar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ModalBottomSheet",
      debugShowCheckedModeBanner: false,
      home: new ModalPage(),);
  }
}

// -----------------------------
// ModalPage


class ModalPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(27, 30, 27, 20),
            child: Text('Clique em cancelar para ver o Modal', style: TextStyle(color: Colors.blueAccent, fontSize: 30),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(27, 0, 27, 20),
                child: ButtonBigPrimary(
                  titulo: 'Próximo',
                  onPressed: () {},
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Modal().bottomSheet(
                      context: context,
                      modal: ModalCancelarPedido(
                        context: context,
                      ),
                    ),
                child: new Text(
                  "Cancelar pedido",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14,
                      fontFamily: 'Open-sans-semi-bold',
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
