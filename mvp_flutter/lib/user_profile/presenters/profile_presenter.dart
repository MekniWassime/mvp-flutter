import 'package:flutter/cupertino.dart';
import 'package:mvp_flutter/user_profile/models/User.dart';

class ProfilePresenter extends ChangeNotifier {
  User? user;

  Future<void> fetchUser() async {
    await Future.delayed(const Duration(seconds: 1)); //mockup backend service
    user = User(
      name: "Floulen",
      familyName: "Ben Foulen",
      age: "25",
      email: "mekni.wassime@gmail.com",
      evaxCode: "456645",
      phoneNumber: "23456789",
    );
    notifyListeners();
  }

  void updatePhoneNumber(String newNumber) {
    if (user == null) return;
    user!.phoneNumber = newNumber;
    notifyListeners();
  }
}
