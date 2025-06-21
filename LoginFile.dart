import 'dart:io';

String Login_File() {
  print("\n");
  print(
    "======================================================================================",
  );
  print(
    "|                          Welcome To Mini Ecommerce System                          |`",
  );
  print(
    "======================================================================================",
  );
  print("\n");
  print("------------------------------------------------------------");
  print("|                 Login with Your Email.                   |");
  print("|               -------------------------                  |");
  print("| [Email: imManager@gmail.com  /  Password: imManager123]  |");
  print("| [Email: imUser@gmail.com     /  Password: imUser123]     |");
  print("| [Email: imSeller@gmail.com   /  Password: imSeller123]   |");
  print("------------------------------------------------------------");

  print(
    "Note: All emails have been provided. Please use the correct email based on your role.",
  );
  print("      If you're a 'User', use the user email, and so on.\n");
  print("\n");

  while (true) {
    stdout.write("Enter Your Email: ");
    String? email = stdin.readLineSync();
    stdout.write("Enter Your Password: ");
    String? password = stdin.readLineSync();

    if (email == "imUser@gmail.com" && password == "imUser123") {
      print("\nLogin Successfully\n");
      return "user";
    } else if (email == "imManager@gmail.com" && password == "imManager123") {
      print("\nLogin Successfully\n");
      return "manager";
    } else if (email == "imSeller@gmail.com" && password == "imSeller123") {
      print("\nLogin Successfully\n");
      return "seller";
    } else {
      print("\nInvalid Email or Password. Try Again.\n");
    }
  }
}

void main() {
  Login_File();
}
