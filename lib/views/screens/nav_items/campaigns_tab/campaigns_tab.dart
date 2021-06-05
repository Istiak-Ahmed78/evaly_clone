import 'package:evaly_clone/state_management/cousual_index.dart';
import 'package:evaly_clone/views/screens/nav_items/campaigns_tab/components/components.dart';
import 'package:evaly_clone/views/shared_widgets/shared_widgets.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants.dart';

class CamPaignsTab extends StatefulWidget {
  const CamPaignsTab({Key? key}) : super(key: key);

  @override
  _CamPaignsTabState createState() => _CamPaignsTabState();
}

final cousulaIndex = StateNotifierProvider<CampignCousualIndex, int>(
    (ref) => CampignCousualIndex());

class _CamPaignsTabState extends State<CamPaignsTab> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          BlarBackGround(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: kToolbarHeight * 0.8,
                  left: smallPadding,
                  right: smallPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchCampaigns(
                        textEditingController: textEditingController,
                        onBackArrowPressed: () {},
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: kWhite,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: aBitLeargePadding,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: smallPadding),
                    child: Container(
                      child: AdBanner(
                        images: slideItems(campaingBannerImages),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: smallPadding,
                  ),
                  Categories(),
                  EvalyCycloneHeading(),
                  SizedBox(
                    height: smallPadding,
                  ),
                  CycloneCard()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
