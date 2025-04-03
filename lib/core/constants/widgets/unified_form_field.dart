import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/colors.dart';

class UnifiedFormField extends StatelessWidget {
  const UnifiedFormField({
    super.key,
    this.label,
    this.hint,
    this.prefix,
    this.validator,
    this.controller,
    this.obscureText = false,
  });

  final String? label;
  final String? hint;
  final Widget? prefix;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: ColorsManager.mainColorLight,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFd6c4a9)),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,

          hintStyle: TextStyle(
            color: Colors.black45,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: prefix,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
