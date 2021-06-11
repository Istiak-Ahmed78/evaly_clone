import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class CardTab extends StatelessWidget {
  static String navTitle = 'Card';
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Shopping Card',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline))
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              kEmtyCard,
              height: _size.height * 0.3,
              width: _size.width * 0.75,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Nothing is added to the card',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w600, color: kLightDark),
            ),
            Spacer(
              flex: 3,
            ),
            Card(
              elevation: 0.0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(smallPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: false,
                            groupValue: false,
                            onChanged: (valu) {}),
                        Text('All')
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Total: ', style: TextStyle(color: kBlack)),
                          TextSpan(text: '৳ 0', style: TextStyle(color: kRed))
                        ])),
                        SizedBox(
                          width: moreSmallPadding,
                        ),
                        // Text('Total:'),
                        MaterialButton(
                          color: kBlack,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(smallPadding))),
                          onPressed: () {},
                          child: Text(
                            'CHECK OUT',
                            style: TextStyle(color: kWhite),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: kToolbarHeight,
            )
          ],
        ),
      ),
    );
  }
}
