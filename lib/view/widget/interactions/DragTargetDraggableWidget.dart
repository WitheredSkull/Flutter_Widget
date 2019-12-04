import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class DragTargetDraggableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DragTargetDraggableWidgetState();
  }
}

class DragTargetDraggableWidgetState extends State<DragTargetDraggableWidget> {
  var data = "请拖动我";
  var endData = "拖动到这里";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _getDraggable(),
        SizedBox(
          width: 30,
        ),
        _getDragTarget()
      ],
    );
  }

  ///拖动目标,Draggable拖动的目标
  ///A widget that receives data when a Draggable widget is dropped. When a draggable is dragged on top of a drag target, the drag target is asked whether it will accept the data the draggable is carrying. If the user does drop the draggable on top of the drag target (and the drag target has indicated that it will accept the draggable's data), then the drag target is asked to accept the draggable's data.
  Widget _getDragTarget() => DragTarget<String>(
        ///布局构建
        builder: (context, candidateData, rejectedData) {
          print("candidateData:${candidateData.toString()}");
          print("rejectedData:${rejectedData.toString()}");
          return Container(
            width: 100,
            height: 100,
            child: Text(endData),
            color: Colors.blueAccent,
          );
        },

        ///拖动到部件的位置后 return是否完成拖动
        onWillAccept: (data) {
          endData = "拖动到这里";
          return data != null;
        },

        ///拖动完成回调
        onAccept: (data) {
          endData = "拖动完成";
          print("onAccept$data");
        },

        ///拖动离开回调
        onLeave: (data) {
          endData = "拖动到这里";
          print("onLeave$data");
        },
      );

  ///一个可以随意拖动的Widget，可以配合DragTarget使用，完成拖动
  ///A widget that can be dragged from to a DragTarget. When a draggable widget recognizes the start of a drag gesture, it displays a feedback widget that tracks the user's finger across the screen. If the user lifts their finger while on top of a DragTarget, that target is given the opportunity to accept the data carried by the draggable.
  Widget _getDraggable() => Draggable<String>(
        ///子部件
        child: _getTargetWidget(),

        ///拖动后有反馈效果的Widget
        feedback: _getTargetWidget(),

        ///拖动时携带的数据，同时所有的处理基于这个数据去配合DragTarget
        data: data,

        ///可以拖动的方向轴(不设置可以自由拖动，设置后只能上下或左右拖动)
//        axis: Axis.horizontal,

        ///拖动后原位置展示的Widget
        childWhenDragging: Container(
          width: 100,
          height: 100,
          child: Text("请给作者一个赞哦!"),
          color: Colors.grey,
        ),

        ///拖动期间部件被锚定的位置
        ///DragAnchor.child：点击后可滑动块中心点是你的手指点击屏幕的点
        ///DragAnchor.pointer：点击后部件显示在你点击点的下方
        dragAnchor: DragAnchor.child,

        ///亲和力
        ///Axis.vertical：手指上下垂直拖动才能拖动Widget
        ///Axis.horizontal：手指左右平行拖动才能拖动Widget
        ///不设置可以随意拖动
//        affinity: Axis.vertical,
        ///设置为1或者不设置才会有拖动的效果
//        maxSimultaneousDrags: 1,
        ///拖动开始
        onDragStarted: () {
          setState(() {
            data = "请拖动我";
          });
          Toast.show(context, "onDragStarted");
        },

        ///拖动取消
        onDraggableCanceled: (velocity, offset) {
          setState(() {
            data = "请拖动我";
          });
          Toast.show(context, "onDraggableCanceled");
        },

        ///拖动结束
        onDragEnd: (details) {
          Toast.show(context, "onDragEnd");
        },

        ///拖动完成
        onDragCompleted: () {
          setState(() {
            data = "拖动完成";
          });
          Toast.show(context, "onDragCompleted");
        },

        ///忽略反馈语义(通常不需要去适配语义相关)
//        ignoringFeedbackSemantics: true,
      );

  Widget _getTargetWidget() => Container(
        width: 100,
        height: 100,
        child: Text(
          data,
          style: Theme.of(context).textTheme.title,
        ),
        color: Colors.blueAccent,
      );
}
