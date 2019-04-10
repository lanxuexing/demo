import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /////////////////////////////////////////////////////////////////
    // 1. RenderFlex child 有Flex非0特性，且到传入的height/width无限制
    //    RenderFlex children have non-zero flex but incoming height constraints are unbounded
    /////////////////////////////////////////////////////////////////

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Hello, First line word'),
            Expanded(
              child: Text('Hello, Second line word'),
            ),
          ],
        ),
      ),
    );

    // return Column( // 错误代码演示
    //   // Column默认mainAxisSize: MainAxisSize.max
    //   children: <Widget>[
    //     Container(
    //       height: 300,
    //       width: double.infinity,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       height: double.infinity,
    //       color: Colors.green,
    //     ),
    //   ],
    // );

    // return Column(// 正确代码演示
    //   // Column默认mainAxisSize: MainAxisSize.max
    //   mainAxisSize: MainAxisSize.min, // 关键点1
    //   children: <Widget>[
    //     Container(
    //       height: 300,
    //       width: double.infinity,
    //       color: Colors.red,
    //     ),
    //     Expanded( // 关键点2
    //       child: Container(
    //         height: double.infinity,
    //         color: Colors.green,
    //       ),
    //     ),
    //   ],
    // );

    /////////////////////////////////////////////////////////////////
    // 2. BoxConstraints 强制 infinity height/width
    //    BoxConstraints forces an infinite height (or width)
    /////////////////////////////////////////////////////////////////

    // return Column(
    //   // 错误代码演示1，解决方案：(mainAxis主轴方向[Column])warp一个Expand, (crossAxis副轴方向[Row])child warp一个Expand
    //   children: <Widget>[
    //     Container(
    //       height: double.infinity,
    //       child: Text('are you infinity?'),
    //     ),
    //   ],
    // );

    /////////////////////////////////////////////////////////////////
    // 3. RenderConstrainedBox infinity height/width
    //    RenderConstrainedBox object was given an infinite size during layout.
    //    Expanded widgets must be placed directly inside Flex widgets.
    /////////////////////////////////////////////////////////////////

    // return Column(
    //   // 错误的代码演示2, 解决方案：1.Container height 2.SizedBox height 3.給Container warp一个Expanded(底部溢出)
    //   children: <Widget>[
    //     Row(
    //       children: <Widget>[
    //         Container(
    //           color: Colors.lightBlue,
    //           child: SizedBox(
    //             height: double.infinity,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
