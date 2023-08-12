import 'package:flutter/material.dart';

import 'flash_sale_chipper.dart';

class AnimatedShape extends StatefulWidget {
  final Widget child;
  const AnimatedShape({required this.child, super.key});

  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.2), weight: 0.5),
      TweenSequenceItem(tween: Tween(begin: 1.2, end: 1.0), weight: 0.5),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: -5.0, end: 5.0), weight: 0.5),
      TweenSequenceItem(tween: Tween(begin: 5.0, end: -5.0), weight: 0.5),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        if (!mounted) {
          return child ?? Container();
        }
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Transform.translate(
              offset: Offset(0, _shakeAnimation.value), child: widget.child),
        );
      },
    );
  }
}
