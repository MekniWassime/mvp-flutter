import 'package:flutter/cupertino.dart';
import 'package:mvp_flutter/register_children/models/child.dart';

class ChildrenPresenter extends ChangeNotifier {
  List<Child> children = [];

  void addChild(String name) {
    children.add(Child(name: name));
    notifyListeners();
  }

  void removeChild(String name) {
    children.removeWhere((child) => child.name.compareTo(name) == 0);
    notifyListeners();
  }
}
