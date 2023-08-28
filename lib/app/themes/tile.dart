import 'package:flutter/material.dart';

Widget tile({required String index, required Color color}) {
  return Container(
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(index),
      ),
    ),
  );
}
