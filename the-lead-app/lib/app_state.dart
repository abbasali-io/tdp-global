import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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
      _orderSearchResultsAppState = prefs
              .getStringList('ff_orderSearchResultsAppState')
              ?.map((x) {
                try {
                  return OrderApiResponseStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _orderSearchResultsAppState;
    });
    _safeInit(() {
      _appVersion = prefs.getString('ff_appVersion') ?? _appVersion;
    });
    _safeInit(() {
      _minBuild = prefs.getInt('ff_minBuild') ?? _minBuild;
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

  String _selectedMenu = '';
  String get selectedMenu => _selectedMenu;
  set selectedMenu(String value) {
    _selectedMenu = value;
  }

  List<OrderApiResponseStruct> _orderSearchResultsAppState = [];
  List<OrderApiResponseStruct> get orderSearchResultsAppState =>
      _orderSearchResultsAppState;
  set orderSearchResultsAppState(List<OrderApiResponseStruct> value) {
    _orderSearchResultsAppState = value;
    prefs.setStringList('ff_orderSearchResultsAppState',
        value.map((x) => x.serialize()).toList());
  }

  void addToOrderSearchResultsAppState(OrderApiResponseStruct value) {
    orderSearchResultsAppState.add(value);
    prefs.setStringList('ff_orderSearchResultsAppState',
        _orderSearchResultsAppState.map((x) => x.serialize()).toList());
  }

  void removeFromOrderSearchResultsAppState(OrderApiResponseStruct value) {
    orderSearchResultsAppState.remove(value);
    prefs.setStringList('ff_orderSearchResultsAppState',
        _orderSearchResultsAppState.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOrderSearchResultsAppState(int index) {
    orderSearchResultsAppState.removeAt(index);
    prefs.setStringList('ff_orderSearchResultsAppState',
        _orderSearchResultsAppState.map((x) => x.serialize()).toList());
  }

  void updateOrderSearchResultsAppStateAtIndex(
    int index,
    OrderApiResponseStruct Function(OrderApiResponseStruct) updateFn,
  ) {
    orderSearchResultsAppState[index] =
        updateFn(_orderSearchResultsAppState[index]);
    prefs.setStringList('ff_orderSearchResultsAppState',
        _orderSearchResultsAppState.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOrderSearchResultsAppState(
      int index, OrderApiResponseStruct value) {
    orderSearchResultsAppState.insert(index, value);
    prefs.setStringList('ff_orderSearchResultsAppState',
        _orderSearchResultsAppState.map((x) => x.serialize()).toList());
  }

  String _appVersion = '1.6.7';
  String get appVersion => _appVersion;
  set appVersion(String value) {
    _appVersion = value;
    prefs.setString('ff_appVersion', value);
  }

  String _activePage = '';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  int _minBuild = 223;
  int get minBuild => _minBuild;
  set minBuild(int value) {
    _minBuild = value;
    prefs.setInt('ff_minBuild', value);
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
