import 'LoginFile.dart';
import 'manager.dart';
import 'seller.dart';
import 'user.dart';

void main() {
  String role = Login_File();

  if (role == "user") {
    userpanel_file();
  } else if (role == "manager") {
    managerpanel_file();
  } else if (role == "seller") {
    sellerPanel();
  } else {
    print("Login failed. Try Again.");
  }
}
