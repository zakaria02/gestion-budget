import 'package:flutter/material.dart';
import '../utils.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final Color color, textColor;
  final VoidCallback? press;

  const RoundedButton({
    Key? key,
    required this.text,
    this.color = primaryColor,
    this.textColor = Colors.white,
    required this.press,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RoundedButtonState();
  }
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(context),
      ),
    );
  }

  Widget newElevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.press,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        textStyle: TextStyle(
            color: widget.textColor, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      child: Text(
        widget.text,
        style: TextStyle(color: widget.textColor),
      ),
    );
  }
}
