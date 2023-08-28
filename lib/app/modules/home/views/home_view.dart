// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pak_rt/app/themes/tile.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = Get.width;
    return Scaffold(body: SafeArea(child: SingleChildScrollView(child: GetBuilder<HomeController>(builder: (_) {
      return Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => _.changeActive1(),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                        width: !_.isActive1 ? w / 2 : w,
                        height: !_.isActive1 ? w / 4 : (w / 4) * 3,
                        child: tile(color: Colors.blue, index: '1'),
                      ),
                    ),
                    if (!_.isActive1)
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        width: w / 2,
                        height: w / 4,
                        child: tile(color: Colors.green, index: '2'),
                      ),
                  ],
                ),
                if (!_.isActive1)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: w / 2,
                    height: w / 2,
                    child: tile(color: Colors.red, index: '3'),
                  ),
              ],
            ),
            Row(
              children: [
                if (_.isActive1)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: w / 2,
                    height: w / 4,
                    child: tile(color: Colors.green, index: '2'),
                  ),
                if (_.isActive1)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: w / 2,
                    height: w / 4,
                    child: tile(color: Colors.red, index: '3'),
                  ),
              ],
            )
          ],
        ),
      );
    }))));
  }
}
