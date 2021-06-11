import 'package:evaly_clone/state_management/radio_mode.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlertDialogContent extends ConsumerWidget {
  Widget tileTitle(text, context) => Text(
        text,
        style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 20,
            fontWeight: FontWeight.normal),
      );
  @override
  Widget build(BuildContext context, ScopedReader reader) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile(
          value: 0,
          groupValue: reader(radioModeProvider),
          onChanged: (value) {
            context.read(radioModeProvider.notifier).changeValue(value as int);
            context
                .read(appThemeStateProvider.notifier)
                .togolModeValue(context);
            Navigator.pop(context);
          },
          title: tileTitle('Dark', context),
        ),
        RadioListTile(
          value: 1,
          groupValue: reader(radioModeProvider),
          onChanged: (value) {
            context.read(radioModeProvider.notifier).changeValue(value as int);
            context
                .read(appThemeStateProvider.notifier)
                .togolModeValue(context);
            Navigator.pop(context);
          },
          title: tileTitle('Light', context),
        ),
      ],
    );
  }
}
