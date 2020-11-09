import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/sum_change_notifier.dart';

class SecondMemberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        Provider.of<SumChangeNotifier>(context, listen: false)
            .updateMembers(secondMember: value);
      },
    );
  }
}
