import 'package:flutter/material.dart';
import 'package:flutter_login_cadastro/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalCancelarPedido extends StatelessWidget {
  final BuildContext context;

  ModalCancelarPedido({@required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cancelar pedido',
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(21, allowFontScalingSelf: true),
                fontFamily: 'Open-sans-regular',
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: const Color(0xff1f272f),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'Tem certeza de que deseja excluir seu pedido? Você pode deixar ele arquivado aqui e finalizar quando tiver todas as informações em mãos.',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17, allowFontScalingSelf: true),
                fontFamily: 'Open-sans-regular',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ButtonBigPrimary(
              titulo: 'Proximo',
              onPressed: () {

              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {

              },
              child: Text(
                'Cancelar pedido',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(18, allowFontScalingSelf: true),
                  fontFamily: 'Open-sans-regular',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}