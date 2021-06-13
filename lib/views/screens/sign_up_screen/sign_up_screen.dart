import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/shared_widgets/shared_widgets.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends ConsumerWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, ScopedReader reader) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: largePadding, horizontal: 26),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    context.read(tabIndexProvider.notifier).setIndex(0);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              SizedBox(
                height: _size.height * 0.1,
              ),
              // Spacer(),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            reader(appThemeStateProvider) == lightTheme
                                ? kEvalyLogo
                                : kEvalyLogoWhite))),
              ),
              SizedBox(
                height: _size.height * 0.1,
              ),

              SizedBox(
                height: largePadding,
              ),
              InputField(
                  hintText: 'Phone Number',
                  textInputType: TextInputType.number,
                  textEditingController: passwordController),
              SizedBox(
                height: largePadding,
              ),

              SizedBox(
                height: largePadding,
              ),
              DefaultButton(onTap: () {}, buttonText: 'Sign Up'),
              SizedBox(
                height: _size.height * 0.2,
              ),

              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor)),
                  TextSpan(
                      text: 'Sign in',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignUpScreen()));
                        },
                      style:
                          TextStyle(color: kRed, fontWeight: FontWeight.bold))
                ]),
              ),

              SizedBox(
                height: smallPadding,
              )
            ],
          ),
        ),
      ),
    );
  }
}
