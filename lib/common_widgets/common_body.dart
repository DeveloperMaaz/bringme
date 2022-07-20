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
  CommonForm({this.formKey, required this.child});

  var formKey;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Form(
        key: formKey,
        child: child,
      ),
    );
  }
}
