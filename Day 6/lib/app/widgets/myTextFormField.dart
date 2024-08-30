import 'package:flutter/material.dart';

Widget myTextFormField({
  String? t,
  TextInputType keyboardType = TextInputType.text, 
  bool obscureText = false,
  bool showEyeIcon = false, // New parameter to control the visibility of the eye icon
}) {
  return StatefulBuilder(
    builder: (context, setState) {
      return TextFormField(
        cursorColor: const Color(0xFFF8FE11),
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          label: Text(
            '$t',
            style: const TextStyle(
              color: Color(0xFF808696),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF8FE11),
            ),
          ),
          suffixIcon: showEyeIcon
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xFFF8FE11), // Same color as the button
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                )
              : null,
        ),
      );
    },
  );
}
