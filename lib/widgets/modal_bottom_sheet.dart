import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Modal {
 bottomSheet({BuildContext context, Widget modal}) {


    ScreenUtil.init(context, width: 414, height: 896, allowFontScaling: false);

    return showModalBottomSheet(
      barrierColor: Color(0xff576078).withAlpha(255).withOpacity(0.6),
      context: context,
      builder: (context) => Wrap(
        children: <Widget>[
          Container(

            color: Color(0xff576078).withAlpha(255).withOpacity(0.6),
            child: Container(
              padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(27), ScreenUtil().setWidth(32), ScreenUtil().setWidth(27), ScreenUtil().setWidth(40)),
              child: modal,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}