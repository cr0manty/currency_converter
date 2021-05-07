import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

typedef OnTapBuilder = Widget Function(BuildContext context, bool isAnimated);

@immutable
class AnimatedOpacityTap extends StatefulWidget {
  final VoidCallback? onPressed;
  final BorderRadius borderRadius;
  final OnTapBuilder builder;
  final bool enabled;
  final bool useHapticFeedback;
  final bool useLongPress;
  final bool singleLongPress;

  const AnimatedOpacityTap({
    required this.builder,
    this.enabled = true,
    this.borderRadius = BorderRadius.zero,
    this.useHapticFeedback = false,
    this.useLongPress = false,
    this.singleLongPress = false,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  static _AnimatedOpacityTapState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AnimatedOpacityTapState>();

  @override
  State<AnimatedOpacityTap> createState() => _AnimatedOpacityTapState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'AnimatedOpacityTap StatefulWidget',
            ),
          ),
      );
}

class _AnimatedOpacityTapState extends State<AnimatedOpacityTap>
    with SingleTickerProviderStateMixin {
  static const Duration kFadeOutDuration = Duration(milliseconds: 10);
  static const Duration kFadeInDuration = Duration(milliseconds: 100);
  final Tween<double> _opacityTween = Tween<double>(begin: 1.0);

  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0.0,
      vsync: this,
    );
    _opacityAnimation = _animationController
        .drive(CurveTween(curve: Curves.decelerate))
        .drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(AnimatedOpacityTap old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = .4;
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp([TapUpDetails? event]) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController.isAnimating) {
      return;
    }
    final bool wasHeldDown = _buttonHeldDown;
    final TickerFuture ticker = _buttonHeldDown
        ? _animationController.animateTo(1.0, duration: kFadeOutDuration)
        : _animationController.animateTo(0.0, duration: kFadeInDuration);
    ticker.then<void>((value) {
      if (mounted && wasHeldDown != _buttonHeldDown) {
        _animate();
      }
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_AnimatedOpacityTapState State<AnimatedOpacityTap>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: widget.enabled ? _handleTapDown : null,
        onTapUp: widget.enabled ? _handleTapUp : null,
        onTapCancel:
            widget.enabled && !widget.useLongPress ? _handleTapUp : null,
        onTap: widget.enabled
            ? () {
                if (widget.useHapticFeedback) HapticFeedback.selectionClick();
                widget.onPressed?.call();
              }
            : null,
        onLongPressStart: (_) {
          if (widget.enabled && widget.useLongPress) {
            _timer = Timer.periodic(
              const Duration(milliseconds: 200),
              (timer) {
                if (widget.singleLongPress) {
                  _handleTapUp();
                  _timer?.cancel();
                }
                if (widget.useHapticFeedback) HapticFeedback.selectionClick();
                widget.onPressed?.call();
              },
            );
          }
        },
        onLongPressEnd: (_) {
          if (widget.useHapticFeedback) HapticFeedback.lightImpact();

          if (widget.enabled && widget.useLongPress) {
            _handleTapUp();
          }

          _timer?.cancel();
        },
        child: Semantics(
          button: true,
          child: AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) => Opacity(
              opacity: _opacityAnimation.value,
              child: widget.builder(context, _opacityAnimation.value != 1.0),
            ),
          ),
        ),
      );
}
