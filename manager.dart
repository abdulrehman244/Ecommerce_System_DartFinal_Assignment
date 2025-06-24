import 'dart:io';

// Global Lists Manager File
List<String> Global_list_Managerfile = [
  "Shoes:  Prize: PKR.4500💸",
  "Shirts:  Prize: PKR.2000💸",
  "Bag:  Prize: PKR.3000💸",
  "Pants:  Prize: PKR.1500💸",
  "Watches:  Prize: PKR.2500💸",
  "Headphones:  Prize: PKR.3500💸",
];

List<String> Global_UserList = [
  "Name: Ali, Age: 18, City: Lahore",
  "Name: Sana, Age: 20, City: Karachi",
  "Name: Ahsan, Age: 22, City: Islamabad",
  "Name: Sara, Age: 19, City: Multan",
  "Name: Bilal, Age: 21, City: Faisalabad",
];

List<String> Global_SellerList = [
  "Name: Asim, Age: 28, City: Lahore",
  "Name: Hina, Age: 25, City: Karachi",
  "Name: Usman, Age: 30, City: Islamabad",
  "Name: Nadia, Age: 27, City: Peshawar",
  "Name: Zain, Age: 32, City: Quetta",
];

//===========================================================================================
//===========================================================================================

// Manager Panel function
void managerpanel_file() {
  print(
    "\n======================================================================================",
  );
  print(
    "|                                ECOMMERCE SYSTEM                                    |",
  );
  print(
    "======================================================================================",
  );
  print(
    "\n                              👤 Welcome, Manager                                     ",
  );
  print(
    "                             =====================                                    \n",
  );

  print("\n========== MANAGER PANEL ==========\n");
  print("1. Add Product");
  print("2. Remove Product");
  print("3. View Product");
  print("4. View Users");
  print("5. View Sellers");
  print("6. Logout");
  print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");

  while (true) {
    stdout.write("\nEnter Your Choice Number: ");
    int? a = int.tryParse(stdin.readLineSync() ?? "");

    if (a == 1) {
      Add_Product_Function();
      break;
    } else if (a == 2) {
      Remove_Product_Function();
      break;
    } else if (a == 3) {
      view_Product_Function();
      break;
    } else if (a == 4) {
      View_User_Function();
      break;
    } else if (a == 5) {
      View_Seller_Function();
      break;
    } else if (a == 6) {
      Logout_Function_Mfile();
      break;
    } else {
      print("\nInvalid Number. Try Again\n");
    }
  }
}

//===========================================================================================
//===========================================================================================

// Add Product Function
void Add_Product_Function() {
  print("""
================================================================
|                          ADD PRODUCTS                        |
================================================================
""");

  print("\n================ ALL PRODUCT IN LIST ================\n");

  stdout.write("Enter Product Name: ");
  String? Product_name = stdin.readLineSync();

  stdout.write("Enter Product Price: ");
  int? Product_prize = int.tryParse(stdin.readLineSync() ?? "");

  if (Product_name != null && Product_prize != null) {
    Global_list_Managerfile.add("$Product_name: Prize: PKR.${Product_prize}💸");
    print("\nProduct Added Successfully!🎉");
    addproducts2();
  } else {
    print("\nInvalid input. Try again.");
  }
}

//===========================================================================================
//===========================================================================================

// Add Products Function 2
addproducts2() {
  print("========================================================");
  print("\n1. You Want To Add More Products");
  print("2. Back To Manager Panel");
  print("3. Logout\n");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      Add_Product_Function();
    } else if (input == 2) {
      managerpanel_file();
    } else if (input == 3) {
      Logout_Function_Mfile();
    } else {
      print("Invalid Try Again");
    }
  }
}

//===========================================================================================
//===========================================================================================

// Remove Product Function
void Remove_Product_Function() {
  print("""
================================================================
|                       REMOVE PRODUCTS                        |
================================================================
""");

  print("\n================= ALL PRODUCT =================\n");

  for (int i = 0; i < Global_list_Managerfile.length; i++) {
    print("${i + 1}. ${Global_list_Managerfile[i]}");
  }
  print("=================================================\n");

  stdout.write("\nEnter Product Number To Remove: ");
  int? input = int.tryParse(stdin.readLineSync() ?? "");

  if (input != null && input > 0 && input <= Global_list_Managerfile.length) {
    print("\n'${Global_list_Managerfile[input - 1]}'.");
    print("Product Removed Successfully!🎉");
    print("===================================\n");
    Global_list_Managerfile.removeAt(input - 1);
    removeproduct2();
  } else {
    print("\n❌ Invalid Product Number.");
  }
}

//===========================================================================================
//===========================================================================================

// Remove Product Function 2
removeproduct2() {
  // print("========================================================");
  print("\n1. You Want To Remove More Products");
  print("2. Back To Manager Panel");
  print("3. Logout\n");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      Remove_Product_Function();
      break;
    } else if (input == 2) {
      managerpanel_file();
      break;
    } else if (input == 3) {
      Logout_Function_Mfile();
      break;
    } else {
      print("Invalid Try Again");
    }
  }
}

// View Product Function
void view_Product_Function() {
  print("""
================================================================
|                         VIEW PRODUCTS                        |
================================================================
""");

  print("\n================== ALL PRODUCTS ==================\n");

  for (int i = 0; i < Global_list_Managerfile.length; i++) {
    print("${i + 1}. ${Global_list_Managerfile[i]}");
  }
  print("===================================================\n");

  // print("========================================================");
  print("1. Back To Manager Panel");
  print("2. Logout\n");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      managerpanel_file();
      break;
    } else if (input == 2) {
      Logout_Function_Mfile();
      break;
    } else {
      print("Invalid Try Again");
    }
  }
}

// View Users Function
void View_User_Function() {
  print("""
================================================================
|                      REGISTERED USERS                        |
================================================================
""");

  print("\n========== CURRENT REGISTERES USERS LIST ==========\n");
  for (int i = 0; i < Global_UserList.length; i++) {
    print("${i + 1}. ${Global_UserList[i]}");
  }
  print("===================================================");

  print("\n1. Back To Manager Panel");
  print("2. Logout\n");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      managerpanel_file();
      break;
    } else if (input == 2) {
      Logout_Function_Mfile();
      break;
    } else {
      print("Invalid Try Again");
    }
  }
}

// View Sellers Function
void View_Seller_Function() {
  print("""
================================================================
|                     REGISTERED SELLERS                       |
================================================================
""");

  print("\n========== CURRENT REGISTERES SELLERS LIST ==========\n");
  for (int i = 0; i < Global_SellerList.length; i++) {
    print("${i + 1}. ${Global_SellerList[i]}");
  }
  print("=====================================================\n");

  print("1. Back To Manager Panel");
  print("2. Logout\n");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      managerpanel_file();
      break;
    } else if (input == 2) {
      Logout_Function_Mfile();
      break;
    } else {
      print("Invalid Try Again");
    }
  }
}

// Logout Function
void Logout_Function_Mfile() {
  while (true) {
    stdout.write("\nDo You Want To Logout? (y/n): ");
    String? input = stdin.readLineSync();

    if (input == "y") {
      print("\nLogout Successfully.");
      print("THANK YOU! 😊");
      exit(0);
    } else if (input == "n") {
      managerpanel_file();
      break;
    } else {
      print("Invalid Try Again");
    }
  }
}

