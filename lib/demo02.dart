import 'package:flutter/material.dart';

class Demo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1. Flexible写法
    // return Row(children: <Widget>[
    //   RaisedButton(
    //     onPressed: () {},
    //     color: Color(0xFF00FF00),
    //     child: Text('绿色按钮'),
    //   ),
    //   Flexible(
    //     flex: 1,
    //     child: RaisedButton(
    //       onPressed: () {},
    //       color: Color(0xFFFF0000),
    //       child: Text('红色按钮'),
    //     ),
    //   ),
    //   RaisedButton(
    //     onPressed: () {},
    //     color: Color(0xFF0000FF),
    //     child: Text('蓝色按钮'),
    //   ),
    // ]);

    // 2. Expanded写法
    return Row(children: <Widget>[
      RaisedButton(
        onPressed: () {},
        color: Color(0xFF00FF00),
        child: Text('绿色按钮'),
      ),
      Expanded(
        flex: 1,
        child: RaisedButton(
          onPressed: () {},
          color: Color(0xFFFF0000),
          child: Text('红色按钮'),
        ),
      ),
      RaisedButton(
        onPressed: () {},
        color: Color(0xFF0000FF),
        child: Text('蓝色按钮'),
      ),
    ]);
  }
}
