import 'dart:ffi';

import 'package:chat_friend/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final IconData icon;
  bool hide;
  final bool isPass;
  final TextEditingController controller;
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.hide = false,
    this.isPass = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.hide,
      controller: widget.controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryColor)),
          label: Text(widget.hint),
          prefixIcon: Icon(widget.icon),
          suffix: widget.isPass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.hide = !widget.hide;
                    });
                  },
                  icon: Icon(Iconsax.eye))
              : SizedBox(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
