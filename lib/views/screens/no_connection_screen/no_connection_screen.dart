import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({Key? key}) : super(key: key);
  void showToast(BuildContext context) {
    Fluttertoast.showToast(
        msg: 'Please connect your intenet or wifi',
        textColor: kBlack,
        backgroundColor: kWhite,
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 4,
              ),
              Container(
                height: 210,
                width: 210,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(kNoInternetImage))),
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                'Ooops!',
                style: TextStyle(fontSize: 27, color: kGrey),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                'No internet Connection found.',
                style: TextStyle(color: kGrey, fontSize: 16),
              ),
              Text(
                'Please check you network settings',
                style: TextStyle(color: kGrey, fontSize: 16),
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showToast(context);
                  },
                  child: Text(
                    'RETRY',
                    style: TextStyle(color: kWhite),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.redAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                ),
              ),
              Spacer(
                flex: 3,
              )
            ]),
      ),
    );
  }
}
