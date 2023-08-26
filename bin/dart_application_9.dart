import 'dart:io';

void main(){
  List <Map> product =[];

  while (true) {
    print("\nWelcome to our store stock");
    print("1.Add product.");
    print("2.Show added products.");
    print("3.Exit.");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      Map products = {};
        print("Enter product name : ");
        products["name"] = stdin.readLineSync()!;
        print("Enter product category :");
        products["category"] = stdin.readLineSync()!;
        print("Enter product brand :");
        products["brand"] = stdin.readLineSync()!;
        print("Enter product price :");
        products["price"] = stdin.readLineSync()!;
        product.add(products);
        break;
      case 2:
        if(product.isEmpty){
          print("No products added");
        } else {
          for(var i in product ){
            print("List of products : ");
            print("\nProduct ${product.indexOf(i) + 1}");
            print("Name : ${i["name"]}");
            print("Category : ${i["category"]}");
            print("Brand : ${i["brand"]}");
            print("Price : ${i["price"]} OMR");
          }
          break;
        }
      case 3:
        print("Exit");
        exit(0);
      default:
        print("Envalid option, please try again.");
    }
  }
}