import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopulerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopulerItem(
            title: 'NewsFeed',
            icon: Icons.contact_page,
            iconColor: kRed,
          ),
          PopulerItem(
            title: 'Gift Cards',
            icon: FontAwesomeIcons.gift,
            iconColor: kGreen,
          ),
          PopulerItem(
            title: 'Express',
            icon: FontAwesomeIcons.truck,
            iconColor: kOrangeAccent,
          ),
          PopulerItem(
            title: 'Catagories',
            icon: Icons.category,
            iconColor: kBlue,
          ),
          PopulerItem(
            title: 'Others',
            icon: FontAwesomeIcons.listAlt,
            iconColor: kOrange,
          )
        ],
      ),
    );
  }
}

class PopulerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;

  const PopulerItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: InkWell(
            child: Container(
              height: populerItemRadius,
              width: populerItemRadius,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kLightGrey),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
            onTap: () {},
          ),
        ),
        SizedBox(
          height: smallPadding,
        ),
        Text(
          title,
          style: TextStyle(fontFamily: defaultFont),
        ),
      ],
    );
  }
}
