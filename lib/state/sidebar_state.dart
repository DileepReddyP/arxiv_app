import 'package:arxiv_app/utils/constants.dart';
import 'package:flutter/foundation.dart';

class SidebarState extends ChangeNotifier {
  bool _slide;
  SidebarScreenState _screen;
  SidebarState({required bool slide, required SidebarScreenState screen})
      : _slide = slide,
        _screen = screen;
  // String _query = 'electron';

  void slideOut() {
    _slide = true;
    notifyListeners();
  }

  void slideIn() {
    _slide = false;
    notifyListeners();
  }

  // get query => _query;
  get screen => _screen;
  get slide => _slide;

  // set newQuery(String newQuery) {
  //   _query = newQuery;
  //   //notifyListeners();
  // }

  set newScreenState(SidebarScreenState newScreen) => _screen = newScreen;
}
