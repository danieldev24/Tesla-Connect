import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;
  int tempo = 29;

  void onBottomNavigationTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetDoorLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }

  void updateTrunkDoorLock() {
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }

  bool isCoolSelected = true;

  void updateCool(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  void tempoUp(){
    tempo = tempo + 1;
    notifyListeners();
  }

  void tempoDown(){
    tempo = tempo -1;
    notifyListeners();
  }

}
