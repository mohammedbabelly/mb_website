import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

typedef WidgetFunction = Widget Function(int);

class AppAnimatedList extends StatelessWidget {
  AppAnimatedList(
      {@required this.itemCount,
      @required this.itemChild,
      this.showItemInterval,
      this.slideTransition = false,
      this.showItemDuration});
  final int itemCount;
  final WidgetFunction itemChild;
  final Duration showItemInterval;
  final Duration showItemDuration;
  final bool slideTransition;
  @override
  Widget build(BuildContext context) {
    return LiveList.options(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: slideTransition ? _buildSlidedItem : _buildFaddedItem,
        options: LiveOptions(
          // Show each item through
          showItemInterval: showItemInterval ?? Duration(milliseconds: 50),
          // Animation duration
          showItemDuration: showItemDuration ?? Duration(milliseconds: 75),
          reAnimateOnVisibility: true,
        ),
        physics: BouncingScrollPhysics());
  }

  Widget _buildFaddedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    return FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: itemChild(index));
  }

  Widget _buildSlidedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: itemChild(index));
  }
}
