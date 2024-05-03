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
      _MyListCour = prefs
              .getStringList('ff_MyListCour')
              ?.map((path) => path.ref)
              .toList() ??
          _MyListCour;
    });
    _safeInit(() {
      _CouritemCounter = prefs.getInt('ff_CouritemCounter') ?? _CouritemCounter;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _MyListCour = [];
  List<DocumentReference> get MyListCour => _MyListCour;
  set MyListCour(List<DocumentReference> value) {
    _MyListCour = value;
    prefs.setStringList('ff_MyListCour', value.map((x) => x.path).toList());
  }

  void addToMyListCour(DocumentReference value) {
    _MyListCour.add(value);
    prefs.setStringList(
        'ff_MyListCour', _MyListCour.map((x) => x.path).toList());
  }

  void removeFromMyListCour(DocumentReference value) {
    _MyListCour.remove(value);
    prefs.setStringList(
        'ff_MyListCour', _MyListCour.map((x) => x.path).toList());
  }

  void removeAtIndexFromMyListCour(int index) {
    _MyListCour.removeAt(index);
    prefs.setStringList(
        'ff_MyListCour', _MyListCour.map((x) => x.path).toList());
  }

  void updateMyListCourAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _MyListCour[index] = updateFn(_MyListCour[index]);
    prefs.setStringList(
        'ff_MyListCour', _MyListCour.map((x) => x.path).toList());
  }

  void insertAtIndexInMyListCour(int index, DocumentReference value) {
    _MyListCour.insert(index, value);
    prefs.setStringList(
        'ff_MyListCour', _MyListCour.map((x) => x.path).toList());
  }

  int _CouritemCounter = 0;
  int get CouritemCounter => _CouritemCounter;
  set CouritemCounter(int value) {
    _CouritemCounter = value;
    prefs.setInt('ff_CouritemCounter', value);
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
