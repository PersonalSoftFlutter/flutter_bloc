import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/first_member_widget.dart';
import 'package:sample_provider/fourth_member_widget.dart';
import 'package:sample_provider/sum_change_notifier.dart';
import 'package:sample_provider/third_member_widget.dart';

import 'second_member_widget.dart';

class MyTestApp extends StatelessWidget {
  SumChangeNotifier notifier = SumChangeNotifier();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChangeNotifierProvider(
          create: (_) => notifier,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FirstMemberWidget(),
              SecondMemberWidget(),
              ThirdMemberWidget(),
              FourthMemberWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
