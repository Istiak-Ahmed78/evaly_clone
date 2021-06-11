import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';

class SearchCampaigns extends StatelessWidget {
  final TextEditingController textEditingController;
  final GestureTapCallback onBackArrowPressed;
  SearchCampaigns(
      {Key? key,
      required this.textEditingController,
      required this.onBackArrowPressed})
      : super(key: key);
  final textFieldStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      borderSide: BorderSide.none);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 47,
      child: TextField(
        readOnly: true,
        controller: textEditingController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: moreSmallPadding),
            prefixIcon: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: kWhite,
              ),
              onPressed: onBackArrowPressed,
            ),
            enabledBorder: textFieldStyle,
            focusedBorder: textFieldStyle,
            filled: true,
            fillColor: Color.fromRGBO(150, 150, 150, 0.4),
            hintText: 'Search in campaigns',
            hintStyle: TextStyle(color: kWhite, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
