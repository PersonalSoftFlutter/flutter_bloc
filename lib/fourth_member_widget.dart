import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/sum_change_notifier.dart';

class FourthMemberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SumChangeNotifier>(
      builder: (context, notifier, child) {
        return Container(
          child: Column(children: [
            child,
            Text(notifier.result),
          ]),
        );
      },
      child: Text("Resultado:"),
    );
  }
}
