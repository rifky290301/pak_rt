import 'package:get/get.dart';

class StackController extends GetxController {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  bool isActive5 = false;
  bool isActive6 = false;
  bool isActive7 = false;
  bool isActive8 = false;

  int duration = 500;
  double x = Get.width / 4;

  // ------------------ 1 ------------------
  double get tPostion1 => 0;
  double get lPostion1 => 0;
  double get wWidget1 {
    if (isActive1) {
      return x * 4;
    }
    return x * 2;
  }

  double get hWidget1 {
    if (isActive1) {
      return x * 3;
    }
    return x;
  }

  // ------------------ 2 ------------------
  double get tPostion2 {
    if (isActive1) {
      return x * 3;
    } else if (isActive3) {
      return 0;
    }
    return x;
  }

  double get lPostion2 {
    if (isActive3) {
      return x * 2;
    }
    return 0;
  }

  double get wWidget2 {
    if (isActive2) {
      return x * 4;
    }
    return x * 2;
  }

  double get hWidget2 {
    if (isActive2) {
      return x * 4;
    }
    return x;
  }

  // ------------------ 3 ------------------
  double get tPostion3 {
    if (isActive1) {
      return x * 3;
    } else if (isActive3) {
      return x;
    }
    return 0;
  }

  double get lPostion3 {
    if (isActive3) {
      return 0;
    }
    return x * 2;
  }

  double get wWidget3 {
    if (isActive3) {
      return x * 4;
    }
    return x * 2;
  }

  double get hWidget3 {
    if (isActive1) {
      return x;
    } else if (isActive2) {
      return x;
    } else if (isActive3) {
      return x * 4;
    }
    return x * 2;
  }

  // ------------------ 4 ------------------
  double get tPostion4 {
    if (isActive1) {
      return x * 4;
    } else if (isActive2) {
      return x * 5;
    } else if (isActive3) {
      return x * 5;
    }
    return x * 2;
  }

  double get lPostion4 {
    return 0;
  }

  double get wWidget4 => x * 4;
  double get hWidget4 => x * 2;

  // ------------------ 5 ------------------
  double get tPostion5 {
    if (isActive1) {
      return x * 6;
    } else if (isActive2) {
      return x * 7;
    } else if (isActive3) {
      return x * 7;
    }
    return x * 4;
  }

  double get lPostion5 => 0;
  double get wWidget5 {
    return x * 2;
  }

  double get hWidget5 {
    if (isActive7) {
      return x;
    }
    return x * 3;
  }

  // ------------------ 6 ------------------
  double get tPostion6 {
    if (isActive1) {
      return x * 6;
    } else if (isActive2) {
      return x * 7;
    } else if (isActive3) {
      return x * 7;
    }
    return x * 4;
  }

  double get lPostion6 {
    return x * 2;
  }

  double get wWidget6 {
    return x * 2;
  }

  double get hWidget6 {
    return x;
  }

  // ------------------ 7 ------------------
  double get tPostion7 {
    if (isActive1) {
      return x * 7;
    } else if (isActive2) {
      return x * 8;
    } else if (isActive3) {
      return x * 8;
    }
    return x * 5;
  }

  double get lPostion7 {
    if (isActive7) {
      return 0;
    }
    return x * 2;
  }

  double get wWidget7 {
    if (isActive7) {
      return x * 4;
    }
    return x * 2;
  }

  double get hWidget7 {
    return x * 2;
  }

  // ------------------ 8 ------------------
  double get tPostion8 {
    return x * 4;
  }

  double get lPostion8 {
    return x * 2;
  }

  double get wWidget8 {
    return x * 2;
  }

  double get hWidget8 {
    return x;
  }
  // ------------------ n ------------------

  void changeActive1() {
    isActive1 = !isActive1;
    isActive2 = false;
    isActive3 = false;
    isActive7 = false;
    update();
  }

  void changeActive2() {
    isActive1 = false;
    isActive2 = !isActive2;
    isActive3 = false;
    isActive7 = false;
    update();
  }

  void changeActive3() {
    isActive1 = false;
    isActive2 = false;
    isActive3 = !isActive3;
    isActive7 = false;
    update();
  }

  void changeActive7() {
    isActive1 = false;
    isActive2 = false;
    isActive3 = false;
    isActive7 = !isActive7;
    update();
  }
}
