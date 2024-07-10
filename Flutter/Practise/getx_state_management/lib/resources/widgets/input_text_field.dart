import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final double? width;
  final bool isPassword;
  final Icon? prefixIcon;
  final Widget? suffix;
  final String? Function(String? value)? validator;

  const InputTextField({
    super.key,
    this.controller,
    this.label,
    this.width,
    required this.isPassword,
    this.prefixIcon,
    this.suffix,
    this.validator,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: widget.width,
      child: TextFormField(
        style: GoogleFonts.poppins(
          color: Colors.white,
        ),
        validator: widget.validator,
        controller: widget.controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey.shade500,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          labelText: widget.label,
          labelStyle: GoogleFonts.poppins(
            color: Colors.blue,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 3,
          ),
          prefixIcon: widget.prefixIcon,
          suffix: widget.suffix,
          prefixIconColor: Colors.white,
        ),
        cursorColor: Colors.white,
        obscureText: widget.isPassword,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
      ),
    );
  }
}
