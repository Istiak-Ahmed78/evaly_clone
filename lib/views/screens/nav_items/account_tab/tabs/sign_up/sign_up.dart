import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/state_management/account_tab_state.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/state_management/terms_state.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/shared_widgets/shared_widgets.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends ConsumerWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController letterTestController = TextEditingController();
  bool termCConfitionState = false;
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
                    context.read(accountTabStateProvider.notifier).setIndex(0);
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
              Row(
                children: [
                  Expanded(
                      child: InputField(
                          hintText: 'First Name',
                          textEditingController: firstNameController)),
                  SizedBox(
                    width: largePadding,
                  ),
                  Expanded(
                      child: InputField(
                    textEditingController: lastNameController,
                    hintText: 'Last Name',
                  ))
                ],
              ),
              SizedBox(
                height: largePadding,
              ),
              InputField(
                  hintText: 'Phone Number',
                  width: double.infinity,
                  textInputType: TextInputType.number,
                  textEditingController: phoneNumberController),
              SizedBox(
                height: largePadding,
              ),
              InputField(
                  hintText: 'Type the word',
                  width: double.infinity,
                  textInputType: TextInputType.text,
                  textEditingController: phoneNumberController),
              SizedBox(
                height: largePadding,
              ),
              Row(children: [
                Checkbox(
                    value: reader(termStateProvider),
                    onChanged: (value) {
                      context.read(termStateProvider.notifier).setIndex(value);
                    }),
                SizedBox(
                  width: largePadding,
                ),
                SizedBox(
                    child: Text(
                        'I agree to the Privacy Policy and Terms & Confitions of Evaly.'))
              ]),
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
                          reader(accountTabStateProvider.notifier).setIndex(0);
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
