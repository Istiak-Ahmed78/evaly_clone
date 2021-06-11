import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme_mode_selection_dialog.dart';

class HomeTabDrawer extends ConsumerWidget {
  const HomeTabDrawer({Key? key}) : super(key: key);

  Widget _tileTitle(text, context) => Text(
        text,
        style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 15,
            fontWeight: FontWeight.normal),
      );
  @override
  Widget build(BuildContext context, ScopedReader reader) {
    void _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: _tileTitle('Choose theme', context),
            content: AlertDialogContent(),
            actions: <Widget>[
              new TextButton(
                child: new Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Container(
      padding: EdgeInsets.all(18),
      color: Theme.of(context).primaryColor,
      child: ListView(
        shrinkWrap: true,
        children: [
          DrawerHeader(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: reader(appThemeStateProvider) == lightTheme
                ? Image.asset(
                    kEvalyLogo,
                    height: 30,
                    width: 70,
                  )
                : Image.asset(
                    kEvalyLogoWhite,
                    height: 30,
                    width: 70,
                  ),
          )),
          ListTile(
            title: _tileTitle('Home', context),
            leading: Icon(Icons.home),
            onTap: () {
              // context.read(tabIndexProvider.notifier).setIndex(0);
            },
          ),
          ListTile(
            title: _tileTitle('Sign In', context),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: _tileTitle('Contact Us', context),
            leading: Icon(Icons.call),
          ),
          ListTile(
            title: _tileTitle('Dark Mode', context),
            leading: Icon(Icons.nightlight),
            onTap: () {
              Navigator.pop(context);
              _showDialog(context);
            },
          ),
          ListTile(
            title: _tileTitle('Terms & Condition', context),
            leading: Icon(
              Icons.article,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: smallPadding),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: smallPadding,
          ),
          Text(title)
        ],
      ),
    );
  }
}
