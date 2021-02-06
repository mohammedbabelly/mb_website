import 'package:flutter/material.dart';

FadeTransition buildFadeTransition(Animation<double> animation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: SlideTransition(
      position: Tween(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    ),
  );
}
