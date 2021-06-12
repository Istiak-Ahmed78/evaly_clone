import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final bool isPass;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  InputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      this.isPass = false,
      this.textInputType = TextInputType.text,
      required this.textEditingController})
      : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isShow = false;
  var border = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(smallPadding)));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: TextField(
        controller: widget.textEditingController,
        cursorColor: kBlack,
        obscureText: widget.isPass ? !isShow : false,
        keyboardType: widget.textInputType,
        style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.7)),
            enabledBorder: border,
            focusedBorder: border,
            prefixIcon: Icon(
              widget.icon,
              size: 20,
              color: Theme.of(context).secondaryHeaderColor.withOpacity(0.1),
            ),
            suffixIcon: widget.isPass
                ? InkWell(
                    onTap: () {
                      setState(() => isShow = !isShow);
                    },
                    child: Icon(
                      isShow ? Icons.visibility_off : Icons.visibility,
                      color: kGrey,
                    ))
                : null,
            fillColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.1),
            filled: true),
      ),
    );
  }
}
