import 'package:flutter/material.dart';

class CommonBody extends StatelessWidget {
  Widget child;

  CommonBody({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: child,
      ),
    );
  }
}

class CommonForm extends StatelessWidget {
  CommonForm({Key? key, this.formKey, required this.child}) : super(key: key);

  var formKey;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: child,
      ),
    );
  }
}
