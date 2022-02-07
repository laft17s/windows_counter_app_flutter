import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  // Required properties

  final Function onPressed;
  final IconData icon;
  final String tooltipText;

  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.tooltipText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: Icon(icon),
      tooltip: tooltipText,
    );
  }
}
