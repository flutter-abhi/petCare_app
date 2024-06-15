import 'package:flutter/material.dart';

Widget myTextFild(
    {required String hintText,
    Icon sufixIcon = const Icon(Icons.edit),
    bool isPass = false,
    String helperText = ""}) {
  return SizedBox(
    height: 65,
    child: TextFormField(
      obscureText: isPass,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 5, left: 10),
        suffixIcon: sufixIcon,
        suffixIconColor: const Color.fromRGBO(250, 200, 162, 1),
        hintText: hintText,
        helperText: helperText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 2,
            color: Color.fromRGBO(250, 200, 162, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 2,
            color: Color.fromRGBO(250, 200, 162, 1),
          ),
        ),
      ),
    ),
  );
}
