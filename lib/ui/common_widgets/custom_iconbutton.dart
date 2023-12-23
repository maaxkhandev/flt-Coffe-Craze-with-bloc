import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    this.padding,
    this.iconSize,
  }) : super(key: key);
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        constraints: const BoxConstraints(),
        iconSize: iconSize ?? 20,
        padding: padding ?? const EdgeInsets.all(2),
        style: IconButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: onPressed,
        icon: Icon(
          icon,
        ));
  }
}
