import 'dart:io';

// Global List
List<String> Global_List_userfile = [];

//==========================================================================================================
//==========================================================================================================

// User Panel Function

userpanel_file() {
  print(
    "======================================================================================",
  );
  print(
    "|                            Mini Ecommerce System                                   |",
  );
  print(
    "======================================================================================\n",
  );
  print(
    "                               👤 Welcome, User                                       ",
  );
  print(
    "                              ==================                                      ",
  );
  print('\n');

  // While Loop

  while (true) {
    print("========== USER PANEL ==========\n");
    print("1. View Product");
    print("2. Buy Product");
    print("3. Logout\n");

    stdout.write("\nEnter Your Choice Number: ");

    int? usernum = int.tryParse(stdin.readLineSync() ?? "");

    if (usernum == 1) {
      view_product();
    } else if (usernum == 2) {
      buy_product_Function1();
    } else if (usernum == 3) {
      logout_function_Ufile();
    } else {
      print("\nInvalid Number. Try Again\n");
    }
  }
}

//===========================================================================================================
//===========================================================================================================

//view Product Function

view_product() {
  print(
    "=======================================================================",
  );
  print(
    "|                          VIEW ALL PRODUCTS                          |",
  );
  print(
    "=======================================================================\n",
  );
  print(
    "\n================================= Available Products =============================\n",
  );

  String a1 =
      " ● | Shoes:    Prize: PKR.4500💸 |        ● | Headphones:     Prize: PKR.3500💸  |";
  String a2 =
      " ● | Shirts:   Prize: PKR.2000💸 |        ● | Laptop:         Prize: PKR.22000💸 |";
  String a3 =
      " ● | Bag:      Prize: PKR.3000💸 |        ● | Phone Covers:   Prize: PKR.500💸   |";
  String a4 =
      " ● | Pants:    Prize: PKR.1500💸 |        ● | T-Shirt:        Prize: PKR.1100💸  |";
  String a5 =
      " ● | watches:  Prize: PKR.2500💸 |        ● | Water Bottles:  Prize: PKR.1300💸  |";
  print(a1);
  print(a2);
  print(a3);
  print(a4);
  print(a5);
  print(
    "\n==================================================================================",
  );

  while (true) {
    print("\n1. Buy Products");
    print("2. Logout\n");

    stdout.write("Enter Your Choice Number: ");

    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      buy_product_Function1();
      break;
    } else if (input == 2) {
      logout_function_Ufile();
      break;
    } else {
      print("You Entered. Invalid Number Try Again");
    }
  }
}

//=========================================================================================================
//=========================================================================================================

//buy_product 1

buy_product_Function1() {
  print(
    "\n=================================== Buy Products ====================================\n",
  );

  String a1 =
      " 1. | Shoes:    Prize: PKR.4500💸 |        6. | Headphones:     Prize: PKR.3500💸   |";
  String a2 =
      " 2. | Shirts:   Prize: PKR.2000💸 |        7. | Laptop:         Prize: PKR.22000💸  |";
  String a3 =
      " 3. | Bag:      Prize: PKR.3000💸 |        8. | Phone Covers:   Prize: PKR.500💸    |";
  String a4 =
      " 4. | Pants:    Prize: PKR.1500💸 |        9. | T-Shirt:        Prize: PKR.1100💸   |";
  String a5 =
      " 5. | watches:  Prize: PKR.2500💸 |        10.| Water Bottles:  Prize: PKR.1300💸   |";

  print(a1);
  print(a2);
  print(a3);
  print(a4);
  print(a5);
  print(
    "\n=====================================================================================\n",
  );

  List<String> products = [
    "Shoes:  Prize: PKR.4500💸",
    "Shirts:  Prize: PKR.2000💸",
    "Bag:  Prize: PKR.3000💸",
    "Pants:  Prize: PKR.1500💸",
    "watches:  Prize: PKR.2500💸",
    "Headphones:  Prize: PKR.3500💸",
    "Laptop:  Prize: PKR.22000💸",
    "Phone Covers:  Prize: PKR.500💸",
    "T-Shirt:  Prize: PKR.1100💸",
    "T-Shirt:  Prize: PKR.1100💸",
    "Water Bottles:Prize:  PKR.1300💸",
  ];

  while (true) {
    stdout.write("Enter Product Number To Buy: ");

    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[0]);
      buy_Product_Function2();
      break; // break
    } else if (input == 2) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[1]);
      buy_Product_Function2();
      break; // break
    } else if (input == 3) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[2]);
      buy_Product_Function2();
      break; // break
    } else if (input == 4) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[3]);
      buy_Product_Function2();
      break; // break
    } else if (input == 5) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[4]);
      buy_Product_Function2();
      break; // break
    } else if (input == 6) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[5]);
      buy_Product_Function2();
      break; // break
    } else if (input == 7) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[6]);
      buy_Product_Function2();
      break; // break
    } else if (input == 8) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[7]);
      buy_Product_Function2();
      break; // break
    } else if (input == 9) {
      print("====================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("====================");
      Global_List_userfile.add(products[8]);
      buy_Product_Function2();
      break; // break
    } else if (input == 10) {
      print("===================");
      print("\nAdd To Card.");
      print("Successfully🎉");
      print("===================");
      Global_List_userfile.add(products[9]);
      buy_Product_Function2();
      break; // break
    } else {
      print("You Entered. Invalid Number Try Again");
    }
  }
}

//===========================================================================================================
//===========================================================================================================

// buy_Product_Function2

buy_Product_Function2() {
  print("\n1. You Want To Buy More Products");
  print("2. View Add To Card Products");
  print("3. Go To User Panel");
  print("4. Logout\n");

  while (true) {
    stdout.write("\nEnter Your Choice Number: \n");

    int? a = int.tryParse(stdin.readLineSync() ?? "");

    if (a == 1) {
      buy_product_Function1();
      break;
    } else if (a == 2) {
      print("==============================================================");
      print("|                YOUR ADD TO CARD PRODUCTS                   |");
      print("==============================================================\n");
      for (int i = 0; i < Global_List_userfile.length; i++) {
        print(Global_List_userfile[i]);
      }
      print("==============================================================");
      buy_Product_Function3();
      break;
    } else if (a == 3) {
      userpanel_file();
      break;
    } else if (a == 4) {
      logout_function_Ufile();
      break;
    } else {
      print("You Entered. Invalid Number Try Again");
    }
  }
}

//=========================================================================================================
//=========================================================================================================

// buy_Product_Function 3

buy_Product_Function3() {
  while (true) {
    stdout.write("\nDo you want to buy your selected products ( y/n ): \n");
    String? input = stdin.readLineSync()!;

    if (input == "y") {
      print("================================");
      print("                               |");
      print("Products Buy Successfully.     |");
      print("You Bought Your Products.      |");
      print("congratulations🎉              |");
      print("================================\n");
      buy_Product_Function4();
      break;
    } else if (input == "n") {
      userpanel_file();
      break;
    } else {
      print("You Entered. Invalid Number Try Again");
    }
  }
}

//=========================================================================================================
//=========================================================================================================

// buy_Product_Function 4

buy_Product_Function4() {
  Global_List_userfile.clear();

  while (true) {
    print("\n1. Back To User Panel");
    print("2. Logout");

    stdout.write("Enter your Choice Number:");
    int? input = int.parse(stdin.readLineSync() ?? "");

    if (input == 1) {
      userpanel_file();
      break;
    } else if (input == 2) {
      logout_function_Ufile();
      break;
    } else {
      print("You Entered. Invalid Number Try Again");
    }
  }
}

//=========================================================================================================
//=========================================================================================================

// Logout Function

logout_function_Ufile() {
  print("\nDo You Want To Exit. (y/n);");
  String? a = stdin.readLineSync();

  while (true) {
    if (a == "y") {
      print("\nLogout Successfully!");
      print("Thank you😊");
      exit(0);
    } else if (a == "n") {
      userpanel_file();
      break;
    } else {
      print("Invalid. Try Again");
    }
  }
}

