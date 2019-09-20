import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RadioWidgetState();
  }
}

enum SingleChoice { First, Second, Third }

class RadioWidgetState extends State<RadioWidget> {
  dynamic value = SingleChoice.Second;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Radio<SingleChoice>(
          value: SingleChoice.First,
          groupValue: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        Radio<SingleChoice>(
          value: SingleChoice.Second,
          groupValue: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        Radio<SingleChoice>(
          value: SingleChoice.Third,
          groupValue: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ],
    );
  }
}
