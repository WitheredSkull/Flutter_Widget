import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个表格部件，展示原始数据集，通常出现在桌面企业产品中
    ///Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.
    return DataTable(
      ///列上面的部件
      columns: [
        DataColumn(

            ///标签
            label: _column(1),

            ///提示
            tooltip: "第1列",

            ///是否用数字表示(true文字展示在最右边，false展示在最左)
            numeric: false,

            ///排序
            onSort: (columnIndex, ascending) {}),
        DataColumn(
            label: _column(2),
            tooltip: "第2列",
            numeric: false,
            onSort: (columnIndex, ascending) {}),
        DataColumn(
            label: _column(3),
            tooltip: "第3列",
            numeric: false,
            onSort: (columnIndex, ascending) {}),
      ],

      ///行上面的部件
      rows: [
        DataRow(

            ///这一行的所有部件,数量必须等同于列的数量
            cells: _rowCells(1, 3),

            ///是否被选中
            selected: true,

            ///这一行的选中监听
            onSelectChanged: (isSelect) {}),
        DataRow(
            cells: _rowCells(2, 3),
            selected: true,
            onSelectChanged: (isSelect) {}),
        DataRow(
            cells: _rowCells(3, 3),
            selected: true,
            onSelectChanged: (isSelect) {}),
      ],

      ///对第多少列进行排序，会展示一个排序的图标
      sortColumnIndex: 0,

      ///升序还是降序
      sortAscending: true,

      ///要控制某一行是否可选，请参阅
      ///[DataRow.onSelectChanged]。此回调仅在有关联时才有效
      onSelectAll: (isSelect) {},

      ///每一行的高度
      dataRowHeight: 48,

      ///头部那一行的高度
      headingRowHeight: 68,

      ///横向ITEM的边距
      horizontalMargin: 24,

      ///纵向的空间
      columnSpacing: 56,
    );
  }

  _column(int position) => Text("列$position");

  List<DataCell> _rowCells(int row, int size) {
    List<DataCell> list = [];
    for (int i = 0; i < size; i++) {
      list.add(DataCell(

          ///子部件
          Text("行$row,第${i + 1}个"),

          ///是否展示占位的样式
          placeholder: false,

          ///是否展示编辑Icon
          showEditIcon: true,

          ///点击事件
          onTap: () {
        print("点击了第$row行,第${i + 1}个");
      }));
    }
    return list;
  }
}
