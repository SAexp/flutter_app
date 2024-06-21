import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _date = DateTime.fromMillisecondsSinceEpoch(1717590720000);
  DateTime? get date => _date;
  set date(DateTime? value) {
    _date = value;
  }

  String _linkText = '';
  String get linkText => _linkText;
  set linkText(String value) {
    _linkText = value;
  }
}
