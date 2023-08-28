import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  double? width1;
  double? height1;
  double? width2;
  double? height2;
  double? width3;
  double? height3;

  void changeActive1() {
    isActive1 = !isActive1;
    update();
  }

  void changeActive2() {
    isActive2 = !isActive2;
    update();
  }

  void changeActive3() {
    isActive3 = !isActive3;
    update();
  }
}
