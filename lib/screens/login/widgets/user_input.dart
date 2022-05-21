import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final TextEditingController? userInput;
  final String? hintTitle;
  final TextInputType? keyboardType;
  final bool? password;
  final VoidCallback? validator;

  const UserInput({
    Key? key,
    this.hintTitle,
    this.keyboardType,
    this.userInput,
    this.password,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
        child: TextField(
          
          obscureText: password!,
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle:
                Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
