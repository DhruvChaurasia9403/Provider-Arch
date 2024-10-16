import 'package:flutter/foundation.dart';

class Favorite_Provider with ChangeNotifier{
  List<int> SelectedItem = [];
  List<int> get getSelectedItem => SelectedItem;
  void add(int index){
    SelectedItem.add(index);
    notifyListeners();
  }
  void remove(int index){
    SelectedItem.remove(index);
    notifyListeners();
  }
  bool contains(int index){
    return SelectedItem.contains(index);
  }
}