import 'package:flutter/material.dart';

class FullScreenDismissableModal extends ModalRoute {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.6);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  FullScreenDismissableModal({
    required this.child,
    this.direction,
    this.onDismissed,
  });

  final Widget child;
  final DismissDirection? direction;
  final void Function(DismissDirection)? onDismissed;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Dismissible(
      key: const ValueKey("dismiss"),
      direction: direction ?? DismissDirection.startToEnd,
      onDismissed: onDismissed ?? (direction) => Navigator.pop(context),
      child: child,
    );
  }

  // animations for the search modal
  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // add fade animation
    return FadeTransition(
      opacity: animation,
      // add slide animation
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}
