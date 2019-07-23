import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      ///设置Child的对齐方式(可以使用Alignment)
      alignment: Alignment.center,

      ///设置内边距,上下左右各20个缩放因子（类似Android的dp）
      padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),

      ///设置颜色，对于布局来说设置颜色就是设置背景（注意，如果使用了decoration则需要删除这一句，因为decoration也有color，会导致冲突报错）
//      color: Colors.white,
      ///背景装饰
      decoration: BoxDecoration(

          ///设置背景颜色(注意，这里如果和父布局Container同时使用会产生冲突)
          color: Colors.white,

          ///设置图片
          image: DecorationImage(
              image: AssetImage("assets/images/icon/ic_baidu.png")),

          ///设置容器边框(不可以和borderRadius同用)
          border: Border(
              bottom: BorderSide(
                  color: Colors.lightBlue, width: 2, style: BorderStyle.solid)),

          ///设置容器圆角
//          borderRadius: BorderRadius.circular(8),

          ///设置阴影
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],

          ///设置渐变色
          gradient:
              LinearGradient(colors: [Colors.cyan, Colors.deepPurpleAccent]),

          ///使用颜色混合，效果等同你用不同的水彩笔叠加画画
          backgroundBlendMode: BlendMode.color,

          ///设置形状
          shape: BoxShape.rectangle),

      ///前景装饰，同背景装饰一样使用，但是前景装饰会遮拦child的内容
      foregroundDecoration: BoxDecoration(),

      ///容器宽度
      width: 200,

      ///容器高度
      height: 150,

      ///设置宽高约束，尽量不要同Container的width和height一起使用，否则可能无效果
      constraints: BoxConstraints(
          maxWidth: 200, minWidth: 150, maxHeight: 150, minHeight: 100),

      ///设置边缘同其他Widget的边距
      margin: EdgeInsets.only(top: 14),

      ///变换（可以随意对你的Container进行4D矩阵变换操作，类似PS的变换效果，下面代码的效果是延X轴倾斜0.1弧度）
      transform: Matrix4.skewX(0.1),
    );
  }
}
