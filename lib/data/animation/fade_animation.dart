import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

// Create enum that defines the animated properties
enum AniProps { opacity, translateX }

class FadeAnimation extends StatelessWidget {
  final Duration duration;
  final Widget child;

  FadeAnimation({@required this.duration, @required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0), duration)
      ..add(
        AniProps.translateX,
        Tween(begin: -30.0, end: 0.0),
        duration,
        Curves.easeIn,
      );
    return CustomAnimation<MultiTweenValues<AniProps>>(
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(animation.get(AniProps.translateX), 0),
          child: child,
        ),
      ),
    );
  }
}
