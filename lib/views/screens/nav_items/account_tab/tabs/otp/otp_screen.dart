import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import '../../../../../../constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double mediumGap = _size.height * 0.0455;
    double smallGap = _size.height * 0.002;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          'Set Password',
          style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          onPressed: () {},
        ),
      ),
      body: SizedBox(
        height: _size.height,
        width: _size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mediumGap,
              ),
              Text(
                'Verify your number',
                style: TextStyle(
                    fontSize: 27,
                    fontFamily: defaultFont,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: mediumGap,
              ),
              Text(
                'A code has been sent to your number,please check messages and enter here.',
                style: TextStyle(
                    fontFamily: defaultFont,
                    fontSize: 20,
                    color: Theme.of(context).canvasColor),
              ),
              SizedBox(
                height: mediumGap,
              ),
              OtpField()
            ],
          ),
        ),
      ),
    );
  }
}

class OtpField extends StatelessWidget {
  OtpField({Key? key}) : super(key: key);
  final TextEditingController otp1 = TextEditingController();
  final TextEditingController otp2 = TextEditingController();
  final TextEditingController otp3 = TextEditingController();
  final TextEditingController otp4 = TextEditingController();
  final TextEditingController otp5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleOtpField(otpController: otp1),
          SingleOtpField(otpController: otp2),
          SingleOtpField(otpController: otp3),
          SingleOtpField(otpController: otp4),
          SingleOtpField(otpController: otp5),
        ],
      ),
    );
  }
}

class SingleOtpField extends StatelessWidget {
  const SingleOtpField({Key? key, required this.otpController})
      : super(key: key);
  final TextEditingController otpController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 40,
      child: TextField(
        controller: otpController,
      ),
    );
  }
}
