// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PlatformSlider extends StatelessWidget {
  final int min, max, divisions, value;
  final Function handler;
  final Color color;

  const PlatformSlider({
    required this.value,
    required this.handler,
    required this.color,
    required this.max,
    required this.min,
    required this.divisions,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSlider(
            onChanged: (value) => handler(value),
            max: max.toDouble(),
            min: min.toDouble(),
            divisions: divisions,
            activeColor: Theme.of(context).primaryColor,
            value: value.toDouble(),
          )
        : Slider(
            value: value.toDouble(),
            onChanged: (value) => handler(value),
            max: this.max.toDouble(),
            min: this.min.toDouble(),
            divisions: this.divisions,
            activeColor: this.color,
          );
  }
}
