import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/screens/nav_items/home_tab/components/conponats.dart';
import 'package:evaly_clone/views/shared_widgets/shared_widgets.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTab extends StatefulWidget {
  static String navTitle = 'Home';

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  OutlineInputBorder borderDecoration =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)));

  @override
  Widget build(BuildContext context) {
    final textFieldDecoration = InputDecoration(
        contentPadding: EdgeInsets.all(smallPadding),
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).iconTheme.color,
        ),
        labelText: 'What would you like to buy?',
        labelStyle: Theme.of(context).textTheme.bodyText2,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Theme.of(context).primaryColor);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: Drawer(
        child: HomeTabDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: textFieldDecoration,
          ),
        ),
        iconTheme: Theme.of(context).iconTheme,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.commentAlt,
                // color: Theme.of(context).secondaryHeaderColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: kToolbarHeight),
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
                productList: PriorityProductModel.priorityProductList,
              ),
              StoreSection(
                title: 'Evaly Fashon Mall',
                subtitle: 'For the fashonable you!',
                productList: PriorityProductModel.priorityProductList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
