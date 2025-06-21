import 'dart:io';

// Global List Seller File
List<String> globalListSeller = [];

//==============================================================================
//==============================================================================

// Seller Panel Function
void sellerPanel() {
  print("""
\n
======================================================================================
|                                MINI ECOMMERCE SYSTEM                               |
======================================================================================

                                  👤 Welcome, Seller
                                 =====================
  """);

  while (true) {
    print("""

=============== SELLER PANEL ===============

1. Add Product to Sell
2. Remove My Product
3. View My Products
4. Logout
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
""");

    while (true) {
      stdout.write("Enter Your Choice Number: ");
      int? choice = int.tryParse(stdin.readLineSync() ?? "");

      switch (choice) {
        case 1:
          addProduct();
          break;
        case 2:
          removeProduct();
          break;
        case 3:
          viewProducts();
          break;
        case 4:
          logout();
          return;
        default:
          print("\nInvalid choice. Please try again.\n");
      }
    }
  }
}

//==============================================================================
//==============================================================================

// Add Product Function
void addProduct() {
  print("""
\n
===============================================================================
|                               ADD PRODUCT                                   |
===============================================================================
""");

  stdout.write("Enter Product Name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter Product Price: ");
  int? price = int.tryParse(stdin.readLineSync() ?? "");

  if (name != null && price != null) {
    globalListSeller.add("$name: Prize: PKR.$price💸");
    print("\nProduct added successfully!🎉 ");
    print("================================\n");
    addProduct2();
  } else {
    print("\nInvalid input. Product not added.\n");
  }
}

// Add Product Function 2
addProduct2() {
  print("\n1. You Want To Add More Product");
  print("2. Back To Seller Panel");
  print("3. Logout\n");

  while (true) {
    stdout.write("Enter your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      addProduct();
    } else if (input == 2) {
      sellerPanel();
    } else if (input == 3) {
      logout();
    } else {
      print("Invali Number Try Again");
    }
  }
}

//==============================================================================
//==============================================================================

// Remove Product Function
void removeProduct() {
  if (globalListSeller.isEmpty) {
    print("""
\n
===============================================================================
|                               REMOVE PRODUCT                                |
===============================================================================
""");

    print("================ All Products List =================\n");
    print("""
No products found. Please add some products first.
====================================================

1. Add Products
2. Back to Seller Panel
3. Logout
""");
    while (true) {
      stdout.write("Enter your choice: ");
      int? choice = int.tryParse(stdin.readLineSync() ?? "");
      if (choice == 1) {
        addProduct();
        break;
      } else if (choice == 2) {
        sellerPanel();
        break;
      } else if (choice == 3) {
        logout();
      } else {
        print("Invalid Number Try Again");
      }
    }
  }

  print("""
\n
===============================================================================
|                               REMOVE PRODUCT                                |
===============================================================================
""");

  print("==================== All Products List ====================\n");
  for (int i = 0; i < globalListSeller.length; i++) {
    print("${i + 1}. ${globalListSeller[i]}");
  }
  print("===========================================================\n");

  while (true) {
    stdout.write("\nEnter product number to remove: ");
    int? index = int.tryParse(stdin.readLineSync() ?? "");

    if (index != null && index > 0 && index <= globalListSeller.length) {
      print("\n'${globalListSeller[index - 1]}'");
      print("removed successfully!🎉\n");
      print("==========================================================\n");
      globalListSeller.removeAt(index - 1);
      removeProduct2();
      break;
    } else {
      print("\nInvalid product number.\n");
    }
  }
}

// Remove Product Function 2
removeProduct2() {
  print("1. You Want To Remove More Products");
  print("2. Back To Seller Panel");
  print("3. Logout");

  while (true) {
    stdout.write("Enter Your Choice Number: ");
    int? input = int.tryParse(stdin.readLineSync() ?? "");

    if (input == 1) {
      removeProduct();
    } else if (input == 2) {
      sellerPanel();
    } else if (input == 3) {
      logout();
    } else {
      print("Invalid Try Again");
    }
  }
}

//==============================================================================
//==============================================================================

// View Product Function
void viewProducts() {
  print("""
\n
===============================================================================
|                                VIEW PRODUCTS                               |
===============================================================================
""");

  if (globalListSeller.isEmpty) {
    print("==================== All Products List ====================\n");
    print("No products available. Please add some first.\n");
    print("===========================================================\n");
  } else {
    print("==================== All Products List ====================\n");
    for (int i = 0; i < globalListSeller.length; i++) {
      print("${i + 1}. ${globalListSeller[i]}");
      print("===========================================================\n");
    }
  }

  print("""

1. Add Products
2. Back to Seller Panel
3. Logout
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
""");

  while (true) {
    stdout.write("Enter your choice: ");
    int? choice = int.tryParse(stdin.readLineSync() ?? "");
    if (choice == 1) {
      addProduct();
      break;
    } else if (choice == 2) {
      sellerPanel();
      break;
    } else if (choice == 3) {
      logout();
    } else {
      print("Invalid input. Try again.");
    }
  }
}

//==============================================================================
//==============================================================================

// Logout
void logout() {
  while (true) {
    stdout.write("\nAre you sure you want to logout? (y/n): ");
    String? confirm = stdin.readLineSync();

    if (confirm == 'y') {
      print("\nLogged out successfully.");
      print("THANK YOU! 😊");
      exit(0);
    } else if (confirm == "n") {
      sellerPanel();
    } else {
      print("Invalid Try Again");
    }
  }
}
