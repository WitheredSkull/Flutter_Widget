import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///步骤条，类似淘宝快递物流一样的
    ///A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form.
    return Stepper(
      ///步骤（这是真正显示的内容）
      steps: [
        Step(
          ///标题
          title: Text("StepTitle 1"),
          ///内容
          content: Text("StepContent 1"),
          ///副标题
          subtitle: Text("StepSubtitle 1"),
          ///状态(不同的状态样式会发生改变)
          state: StepState.indexed,
          ///步骤是否执行中
          isActive: true,
        ),
        Step(
          title: Text("StepTitle 2"),
          content: Text("StepContent 2"),
          subtitle: Text("StepSubtitle 2"),
          state: StepState.indexed,
          isActive: false,
        ),
        Step(
          title: Text("StepTitle 3"),
          content: Text("StepContent 3"),
          subtitle: Text("StepSubtitle 3"),
          state: StepState.indexed,
          isActive: false,
        ),
      ],
      ///物理加速属性
      physics: ClampingScrollPhysics(),
      ///步骤条方向
      type: StepperType.vertical,
      ///步骤条位置
      currentStep: 0,
      ///点击Step Item的回调
      onStepTapped: (position){
        print("onStepTapped $position");
      },
      ///点击Continue回调
      onStepContinue: (){
        print("onStepContinue");
        },
      ///点击Canncel回调
      onStepCancel: (){
        print("onStepCancel");
      },
      ///控制构建（官方默认构建有Continue和Cancel，可以重写取消）
//      controlsBuilder: ,
    );
  }
}
