import 'package:flutter/material.dart';

class SumChangeNotifier extends ChangeNotifier {
  String _result = '';
  String get result => _result;
  var _firstMember;
  var _secondMember;

  void updateMembers({firstMember, secondMember}) {
    if (firstMember != null) {
      _firstMember = int.tryParse(firstMember) ?? firstMember.toString();
    }
    if (secondMember != null) {
      _secondMember = int.tryParse(secondMember) ?? secondMember.toString();
    }
    //
    _secondMember = _secondMember ?? '';
    _firstMember = _firstMember ?? '';
    //
    if (_firstMember is int && _secondMember is int) {
      _result = (_firstMember + _secondMember).toString();
    } else if (_firstMember is String && _secondMember is String) {
      _result = _firstMember + _secondMember;
    } else {
      _result = _firstMember.toString() + _secondMember.toString();
    }
    notifyListeners();
  }
}
