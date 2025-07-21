import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isDarkTheme = prefs.getBool('ff_isDarkTheme') ?? _isDarkTheme;
    });
    _safeInit(() {
      _selectedUser = prefs.getString('ff_selectedUser')?.ref ?? _selectedUser;
    });
    _safeInit(() {
      _debutToken = prefs.getString('ff_debutToken') ?? _debutToken;
    });
    _safeInit(() {
      _currentVersion = prefs.getString('ff_currentVersion') ?? _currentVersion;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;
  set isDarkTheme(bool value) {
    _isDarkTheme = value;
    prefs.setBool('ff_isDarkTheme', value);
  }

  DocumentReference? _selectedUser;
  DocumentReference? get selectedUser => _selectedUser;
  set selectedUser(DocumentReference? value) {
    _selectedUser = value;
    value != null
        ? prefs.setString('ff_selectedUser', value.path)
        : prefs.remove('ff_selectedUser');
  }

  DocumentReference? _selectedWarehouse;
  DocumentReference? get selectedWarehouse => _selectedWarehouse;
  set selectedWarehouse(DocumentReference? value) {
    _selectedWarehouse = value;
  }

  String _debutToken = 'C0206E5D-9E80-4FA1-BA6E-027455F14A10';
  String get debutToken => _debutToken;
  set debutToken(String value) {
    _debutToken = value;
    prefs.setString('ff_debutToken', value);
  }

  String _currentVersion = '4.1.10';
  String get currentVersion => _currentVersion;
  set currentVersion(String value) {
    _currentVersion = value;
    prefs.setString('ff_currentVersion', value);
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool value) {
    _showFullList = value;
  }

  bool _selectOrdersForBatchShowSearchResults = false;
  bool get selectOrdersForBatchShowSearchResults =>
      _selectOrdersForBatchShowSearchResults;
  set selectOrdersForBatchShowSearchResults(bool value) {
    _selectOrdersForBatchShowSearchResults = value;
  }

  DateTime? _startAppDate = DateTime.fromMillisecondsSinceEpoch(1675209600000);
  DateTime? get startAppDate => _startAppDate;
  set startAppDate(DateTime? value) {
    _startAppDate = value;
  }

  bool _onlineOrdersSearchResults = false;
  bool get onlineOrdersSearchResults => _onlineOrdersSearchResults;
  set onlineOrdersSearchResults(bool value) {
    _onlineOrdersSearchResults = value;
  }

  bool _deliveriesSearchResults = false;
  bool get deliveriesSearchResults => _deliveriesSearchResults;
  set deliveriesSearchResults(bool value) {
    _deliveriesSearchResults = value;
  }

  bool _deliverySearchResultVolunteers = false;
  bool get deliverySearchResultVolunteers => _deliverySearchResultVolunteers;
  set deliverySearchResultVolunteers(bool value) {
    _deliverySearchResultVolunteers = value;
  }

  bool _orderSearchResultsAdmin = false;
  bool get orderSearchResultsAdmin => _orderSearchResultsAdmin;
  set orderSearchResultsAdmin(bool value) {
    _orderSearchResultsAdmin = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
