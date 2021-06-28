import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final double height, width;
  final Color buttonColor, buttonTextColor;
  const DefaultButton(
      {Key? key,
      required this.onTap,
      required this.buttonText,
      this.height = 50,
      this.width = double.infinity,
      this.buttonTextColor = Colors.white,
      this.buttonColor = kBlack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            buttonText,
            style: TextStyle(color: buttonTextColor),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          ),
        ));
  }
}
