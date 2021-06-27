import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';

class SliverTitle extends StatelessWidget {
  const SliverTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    final deltaExtent = settings!.maxExtent - settings.minExtent;
    final t =
        (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
            .clamp(0.0, 1.0) as double;
    final scaleValue = Tween<double>(begin: 1.5, end: 1.0).transform(t);
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth / scaleValue,
        child: Text(
          text,
          style: TextStyle(color: kBlack),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
    });
  }
}
