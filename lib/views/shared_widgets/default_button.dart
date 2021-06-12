import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const DefaultButton({Key? key, required this.onTap, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.button,
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            backgroundColor: MaterialStateProperty.all<Color>(kBlack),
          ),
        ));
  }
}
