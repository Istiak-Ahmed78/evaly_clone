import 'package:evaly_clone/views/screens/nav_items/home_tab/components/conponats.dart';
import 'package:evaly_clone/views/shared_widgets/shared_widgets.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants.dart';

class HomeTab extends StatefulWidget {
  static String navTitle = 'Home';

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  OutlineInputBorder borderDecoration =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)));
  final textFieldDecoration = InputDecoration(
      contentPadding: EdgeInsets.all(smallPadding),
      prefixIcon: Icon(Icons.search),
      labelText: 'What would you like to buy?',
      labelStyle: TextStyle(fontSize: 16, color: kGrey),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide.none),
      filled: true,
      fillColor: textFieldColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      drawer: Drawer(
        child: HomeTabDrawer(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: textFieldDecoration,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.commentAlt))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, bottom: kToolbarHeight),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AdBanner(
                  images: slideItems(homeTabBannerImages),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PopulerItems(),
              StoreSection(
                title: 'Evaly Priority Store',
                subtitle: 'Priority Services!',
                productListWidget: PriorityProductList(),
              ),
              StoreSection(
                title: 'Evaly Fashon Mall',
                subtitle: 'Foe the fashonable you!',
                productListWidget: PriorityProductList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
