import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shoe_kart/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeshop = [
    Shoe(
        name: 'Air Force 1 High ',
        price: '260',
        imagePath: 'assets/images/1shoe.png',
        description:
            'Classic colour choices and an additional Gum option for the sole mean your shoe is destined to be one of a kind, just like you.'),
    Shoe(
        name: 'Air Force Low',
        price: '220',
        imagePath: 'assets/images/2shoe.png',
        description:
            'This crafted take on the AF-1 has the streetwear boutiques seal of approval its stamped right into the perforations pattern on the toe.'),
    Shoe(
        name: 'Air Force 1 Low Retro',
        price: '399',
        imagePath: 'assets/images/3shoe.png',
        description:
            'Returning to the original materials and keeping everything you love best—classic leather construction'),
    Shoe(
        name: 'Air Force 1 Mid React',
        price: '329',
        imagePath: 'assets/images/4shoe.png',
        description:
            'Fusing modern comfort with hoops style, split your time between original and new with this futuristic design.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeshop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
