import 'package:flutter/material.dart';

class BottomSheetWidget {
  static showBottomSheet1(var context, GlobalKey<ScaffoldState> scaffoldKey) {
    ///Material风格的底部弹出框
    ///A material design bottom sheet.
    scaffoldKey.currentState.showBottomSheet(

        ///构建内容
        (context) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("BottomSheetItem $index"),
          );
        },
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
      );
    },

        ///弹出的Bottom背景颜色
        backgroundColor: Colors.white,

        ///阴影高度
        elevation: 20.0,

        ///外形
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        ///剪裁方式
        clipBehavior: Clip.none);

//下面两种打开方式不知道为什么，都有一定的问题
//第二种
//    showModalBottomSheet(
//        context: context,
//        isScrollControlled: true,
//        builder: (context) {
//          return BottomSheet(onClosing: () {
//            print("close");
//          }, builder: (context) {
//            return ListView.builder(
//              itemBuilder: (context, index) {
//                return ListTile(
//                  title: Text("BottomSheetItem $index"),
//                );
//              },
//              shrinkWrap: true,
//              itemCount: 10,
//            );
//          });
//        },
//        backgroundColor: Colors.white,
////      elevation:
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(4),
//        ),
//        clipBehavior: Clip.none);
//第三种
//    showBottomSheet(
//        context: context,
//        builder: (context) {
//          return BottomSheet(onClosing: () {
//            print("close");
//          }, builder: (context) {
//            return ListView.builder(
//              itemBuilder: (context, index) {
//                return ListTile(
//                  title: Text("BottomSheetItem $index"),
//                );
//              },
//              shrinkWrap: true,
//              itemCount: 10,
//            );
//          });
//        },
//        backgroundColor: Colors.white,
////      elevation:
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(4),
//        ),
//        clipBehavior: Clip.none);
  }
}
