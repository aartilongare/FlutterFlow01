import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _TokenLocalState =
        prefs.getString('ff_TokenLocalState') ?? _TokenLocalState;
    _AuditorIdLocalState =
        prefs.getString('ff_AuditorIdLocalState') ?? _AuditorIdLocalState;
    _Category01 = prefs.getString('ff_Category01') ?? _Category01;
    _ClientID = prefs.getString('ff_ClientID') ?? _ClientID;
    _AuditIdForstartPage =
        prefs.getString('ff_AuditIdForstartPage') ?? _AuditIdForstartPage;
    _Signature = prefs.getString('ff_Signature') ?? _Signature;
    _FloorLocalState =
        prefs.getString('ff_FloorLocalState') ?? _FloorLocalState;
    _TRAFFICSPACE = prefs.getString('ff_TRAFFICSPACE') ?? _TRAFFICSPACE;
    _ElementCount = prefs.getInt('ff_ElementCount') ?? _ElementCount;
  }

  late SharedPreferences prefs;

  String _TokenLocalState = '1234567890';
  String get TokenLocalState => _TokenLocalState;
  set TokenLocalState(String _value) {
    notifyListeners();

    _TokenLocalState = _value;
    prefs.setString('ff_TokenLocalState', _value);
  }

  String _AuditorIdLocalState = '';
  String get AuditorIdLocalState => _AuditorIdLocalState;
  set AuditorIdLocalState(String _value) {
    notifyListeners();

    _AuditorIdLocalState = _value;
    prefs.setString('ff_AuditorIdLocalState', _value);
  }

  String _Category01 = '';
  String get Category01 => _Category01;
  set Category01(String _value) {
    notifyListeners();

    _Category01 = _value;
    prefs.setString('ff_Category01', _value);
  }

  List<String> _AANTALFOUTEN = [];
  List<String> get AANTALFOUTEN => _AANTALFOUTEN;
  set AANTALFOUTEN(List<String> _value) {
    notifyListeners();

    _AANTALFOUTEN = _value;
  }

  void addToAANTALFOUTEN(String _value) {
    notifyListeners();
    _AANTALFOUTEN.add(_value);
  }

  void removeFromAANTALFOUTEN(String _value) {
    notifyListeners();
    _AANTALFOUTEN.remove(_value);
  }

  List<String> _ELEMENT = [];
  List<String> get ELEMENT => _ELEMENT;
  set ELEMENT(List<String> _value) {
    notifyListeners();

    _ELEMENT = _value;
  }

  void addToELEMENT(String _value) {
    notifyListeners();
    _ELEMENT.add(_value);
  }

  void removeFromELEMENT(String _value) {
    notifyListeners();
    _ELEMENT.remove(_value);
  }

  List<String> _FOUTSOORT = [];
  List<String> get FOUTSOORT => _FOUTSOORT;
  set FOUTSOORT(List<String> _value) {
    notifyListeners();

    _FOUTSOORT = _value;
  }

  void addToFOUTSOORT(String _value) {
    notifyListeners();
    _FOUTSOORT.add(_value);
  }

  void removeFromFOUTSOORT(String _value) {
    notifyListeners();
    _FOUTSOORT.remove(_value);
  }

  List<String> _LOGBOEK = [];
  List<String> get LOGBOEK => _LOGBOEK;
  set LOGBOEK(List<String> _value) {
    notifyListeners();

    _LOGBOEK = _value;
  }

  void addToLOGBOEK(String _value) {
    notifyListeners();
    _LOGBOEK.add(_value);
  }

  void removeFromLOGBOEK(String _value) {
    notifyListeners();
    _LOGBOEK.remove(_value);
  }

  List<String> _SCHOONMAK = [];
  List<String> get SCHOONMAK => _SCHOONMAK;
  set SCHOONMAK(List<String> _value) {
    notifyListeners();

    _SCHOONMAK = _value;
  }

  void addToSCHOONMAK(String _value) {
    notifyListeners();
    _SCHOONMAK.add(_value);
  }

  void removeFromSCHOONMAK(String _value) {
    notifyListeners();
    _SCHOONMAK.remove(_value);
  }

  String _ClientID = '';
  String get ClientID => _ClientID;
  set ClientID(String _value) {
    notifyListeners();

    _ClientID = _value;
    prefs.setString('ff_ClientID', _value);
  }

  String _AuditIdForstartPage = '';
  String get AuditIdForstartPage => _AuditIdForstartPage;
  set AuditIdForstartPage(String _value) {
    notifyListeners();

    _AuditIdForstartPage = _value;
    prefs.setString('ff_AuditIdForstartPage', _value);
  }

  String _Signature = '';
  String get Signature => _Signature;
  set Signature(String _value) {
    notifyListeners();

    _Signature = _value;
    prefs.setString('ff_Signature', _value);
  }

  String _FloorLocalState = '';
  String get FloorLocalState => _FloorLocalState;
  set FloorLocalState(String _value) {
    notifyListeners();

    _FloorLocalState = _value;
    prefs.setString('ff_FloorLocalState', _value);
  }

  String _TRAFFICSPACE = '';
  String get TRAFFICSPACE => _TRAFFICSPACE;
  set TRAFFICSPACE(String _value) {
    notifyListeners();

    _TRAFFICSPACE = _value;
    prefs.setString('ff_TRAFFICSPACE', _value);
  }

  int _ElementCount = 0;
  int get ElementCount => _ElementCount;
  set ElementCount(int _value) {
    notifyListeners();

    _ElementCount = _value;
    prefs.setInt('ff_ElementCount', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
