import 'package:flutter/material.dart';

class ReviewsAndRattings extends StatelessWidget {
  final int totalRattings;
  ReviewsAndRattings({Key? key, required this.totalRattings}) : super(key: key);

  List<Widget> rattingStatrs(int totalRating, context) {
    var rattinIconList = List<Widget>.generate(
        totalRating,
        (_) => Icon(
              Icons.star,
              color: Theme.of(context).highlightColor,
            ));
    var nonRatedStarsList = List.generate(
        5 - rattinIconList.length,
        (_) => Icon(
              Icons.star_border_outlined,
              color: Theme.of(context).hintColor,
            ));
    return List.from(rattinIconList)..addAll(nonRatedStarsList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reviews & Rattings',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    totalRattings.toString(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      for (var r in rattingStatrs(totalRattings, context)) r
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    totalRattings.toString(),
                  )
                ],
              ),
              Column(
                children: [
                  for (int l = 5; l >= 1; l--)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text(l.toString()),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SingleRattingBar(),
                          SizedBox(
                            width: 4,
                          ),
                          Text('0')
                        ],
                      ),
                    )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class SingleRattingBar extends StatelessWidget {
  final int ratting;
  const SingleRattingBar({Key? key, this.ratting = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).highlightColor.withOpacity(0.3)),
    );
  }
}
