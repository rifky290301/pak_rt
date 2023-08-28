import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pak_rt/app/themes/tile.dart';

import '../controllers/stack_controller.dart';

class StackView extends GetView<StackController> {
  const StackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SingleChildScrollView(child: GetBuilder<StackController>(builder: (_) {
      return Container(
        color: Colors.green[200],
        width: Get.width,
        height: Get.height * 1.5,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: _.lPostion1,
              left: _.tPostion1,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => _.changeActive1(),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeInOutBack,
                  width: _.wWidget1,
                  height: _.hWidget1,
                  child: tile(color: Colors.blue, index: '1'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion2,
              left: _.lPostion2,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => _.changeActive2(),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeInOutBack,
                  width: _.wWidget2,
                  height: _.hWidget2,
                  child: tile(color: Colors.red, index: '2'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion3,
              left: _.lPostion3,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => _.changeActive3(),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeInOutBack,
                  width: _.wWidget3,
                  height: _.hWidget3,
                  child: tile(color: Colors.yellow, index: '3'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion4,
              left: _.lPostion4,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeIn,
                  width: _.wWidget4,
                  height: _.hWidget4,
                  child: tile(color: Colors.purple, index: '4'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion5,
              left: _.lPostion5,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeIn,
                  width: _.wWidget5,
                  height: _.hWidget5,
                  child: tile(color: Colors.pink, index: '5'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion6,
              left: _.lPostion6,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeInOutBack,
                  width: _.wWidget6,
                  height: _.hWidget6,
                  child: tile(color: Colors.cyan, index: '6'),
                ),
              ),
            ),
            AnimatedPositioned(
              top: _.tPostion7,
              left: _.lPostion7,
              duration: Duration(milliseconds: _.duration),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => _.changeActive7(),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: _.duration),
                  curve: Curves.easeInOutBack,
                  width: _.wWidget7,
                  height: _.hWidget7,
                  child: tile(color: Colors.brown, index: '7'),
                ),
              ),
            ),
          ],
        ),
      );
    }))));
  }
}
