import 'package:flutter/material.dart';

Widget submitButton({
  double? height,
  double? width,
  String? title,
  final VoidCallback? onPress,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onPress,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  title.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: width! * 0.3,
            height: height,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: const Center(
                child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            )),
          ),
        ],
      ),
    ],
  );
}
