import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  const MyTextFields({
    Key? key,
    required this.hintedText,
    required this.labelText,
    required this.inputController,
  }) : super(key: key);

  final String hintedText;
  final String labelText;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: inputController,
        validator: (value) {
          if (value!.isEmpty) {
            return '$labelText is required';
          }
        },
        decoration: InputDecoration(
          hintText: hintedText,
          label: Text(labelText),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 3,
            color: Colors.blueAccent,
          )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 3,
            color: Colors.blueAccent,
          )),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 3,
            color: Colors.red,
          )),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 3,
            color: Colors.red,
          )),
        ),
      ),
    );
  }
}
