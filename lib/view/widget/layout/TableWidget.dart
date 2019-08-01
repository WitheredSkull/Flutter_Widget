import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///绘制一个表格的部件
    ///A widget that uses the table layout algorithm for its children.
    return Table(
      ///指定列宽
      columnWidths: {
        ///第0列,宽度80
        0: FixedColumnWidth(80.0),

        ///第1列
        1: FixedColumnWidth(100.0),
        2: FixedColumnWidth(80.0),
      },

      ///默认列宽
      defaultColumnWidth: FixedColumnWidth(100.0),

      ///文字方向
      textDirection: TextDirection.ltr,

      ///表格边框
      border: TableBorder.all(
          color: Colors.grey, width: 1, style: BorderStyle.solid),

      ///默认垂直对齐方向
      defaultVerticalAlignment: TableCellVerticalAlignment.top,

      ///文字对齐基线
      textBaseline: TextBaseline.ideographic,
      children: [
        TableRow(
          ///单元格装饰
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
          children: [
            Text("\n第0列\n",textAlign: TextAlign.center,),
            Text("\n第1列\n",textAlign: TextAlign.center,),
            Text("\n第2列\n",textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          ///单元格装饰
          decoration: BoxDecoration(),
          children: [
            Text("\n第0列\n",textAlign: TextAlign.center,),
            Text("\n第1列\n",textAlign: TextAlign.center,),
            Text("\n第2列\n",textAlign: TextAlign.center,),
          ],
        )
      ],
    );
  }
}
