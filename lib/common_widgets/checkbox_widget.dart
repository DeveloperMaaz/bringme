import 'package:flutter/material.dart';

class ReUseCheckBox extends StatefulWidget {
  const ReUseCheckBox({Key? key}) : super(key: key);

  @override
  State<ReUseCheckBox> createState() => _ReUseCheckBoxState();
}

class _ReUseCheckBoxState extends State<ReUseCheckBox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {

    return Checkbox(

      side: const BorderSide(color: Color(0xff999898)),
      activeColor: Colors.red,
      shape: const CircleBorder(),
        value: isChecked, onChanged: (bool ? value){
          setState((){
            isChecked=value!;
          });

    });
  }
}
