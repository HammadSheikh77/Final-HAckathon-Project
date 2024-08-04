import 'package:final_hackathon/Views/HomeView/BrowseScreen.dart';
import 'package:final_hackathon/Views/HomeView/CartScreen.dart';
import 'package:final_hackathon/Views/HomeView/HomeScreen.dart';
import 'package:final_hackathon/Views/HomeView/OrderScreen.dart';
import 'package:final_hackathon/Views/HomeView/ProfileScreen.dart';
import 'package:get/get.dart';

class BottomnaviController extends GetxController {
  var selectedIndex = 0.obs;
  List pages = [
    const Homescreen(),
    const Browsescreen(),
    const Cartscreen(),
    const Orderscreen(),
    const Profilescreen(),
  ];
  void onTapNav(int index) {
    selectedIndex.value = index;
  }
}
