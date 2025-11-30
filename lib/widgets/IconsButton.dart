import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';
import 'package:i_movie/util/EventBus.dart';

IconsButton({
  Color color = Colors.grey,
  double size = 24,
  required IconData icon,
  required Function onPress,
}) {
  return IconButton(
    highlightColor: Colors.transparent,
    padding: EdgeInsets.zero,
    alignment: Alignment.center,
    splashColor: Colors.transparent,
    onPressed: () {
      onPress();
    },
    icon: Icon(
      icon,
      size: size,
      color: color,
    ),
  );
}
