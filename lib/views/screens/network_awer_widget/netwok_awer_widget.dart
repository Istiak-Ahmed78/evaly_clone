import 'package:evaly_clone/utils/connectivity/network_status_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NetwoekAwerWidget extends StatefulWidget {
  const NetwoekAwerWidget(
      {Key? key, required this.onlineWidget, required this.offlineWidget})
      : super(key: key);
  final Widget onlineWidget;
  final Widget offlineWidget;

  @override
  _NetwoekAwerWidgetState createState() => _NetwoekAwerWidgetState();
}

class _NetwoekAwerWidgetState extends State<NetwoekAwerWidget> {
  @override
  Widget build(BuildContext context) {
    NetWorkStatus netWorkStatus = Provider.of<NetWorkStatus>(context);
    if (netWorkStatus == NetWorkStatus.online)
      return widget.onlineWidget;
    else
      return widget.offlineWidget;
  }
}
