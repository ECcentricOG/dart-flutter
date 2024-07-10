import 'package:flutter/material.dart';

class PressButton extends StatefulWidget {
  final Widget buttonName;
  final void Function()? onPress;
  final double? height;
  final double? width;
  const PressButton({
    super.key,
    required this.buttonName,
    required this.onPress,
    this.height,
    this.width,
  });

  @override
  State<PressButton> createState() => _PressButtonState();
}

class _PressButtonState extends State<PressButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: TextButton(
        onPressed: widget.onPress,
        child: widget.buttonName,
      ),
    );
  }
}
