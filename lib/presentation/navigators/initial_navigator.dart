import 'dart:async';

import 'package:currency_converter/presentation/screens/addition/splash_screen.dart';
import 'package:currency_converter/presentation/screens/currency_converter/currency_converter.dart';
import 'package:currency_converter/presentation/widgets/connection_change_card.dart';
import 'package:currency_converter/presentation/widgets/toast.dart';
import 'package:currency_converter/src/cubit/connection_check.dart';
import 'package:currency_converter/src/navigation_bloc/initial_navigation.dart';
import 'package:currency_converter/src/repositories/utils/connection_repo.dart';
import 'package:currency_converter/src/repositories/utils/initial_repo.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class InitialNavigator extends StatefulWidget {
  const InitialNavigator({
    Key? key,
  }) : super(key: key);

  @override
  _InitialNavigatorState createState() => _InitialNavigatorState();

  static _InitialNavigatorState? of(BuildContext context) =>
      context.findAncestorStateOfType<_InitialNavigatorState>();

  static Widget page() => BlocProvider<ConnectionCheckCubit>(
        create: (context) => ConnectionCheckCubit(
          ConnectionRepo(),
        ),
        child: BlocProvider<InitialNavigationBLoC>(
          create: (context) => InitialNavigationBLoC(
            InitialRepo(),
          ),
          child: const InitialNavigator(),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'InitialNavigator StatefulWidget',
            ),
          ),
      );
}

class _InitialNavigatorState extends State<InitialNavigator> {
  late final ConnectionCheckCubit _connectionCheck;
  StreamSubscription? _onMessage;
  FlashController? _controller;

  Timer? _timer;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'InitialNavigator State<InitialNavigator>',
            ),
          ),
      );

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    _connectionCheck = context.read<ConnectionCheckCubit>();

    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => _connectionListener(_connectionCheck.state),
    );

    // _onMessage = FirebaseMessaging.onMessage.listen((message) {
    //   print('onMessage: $message');
    // });
  }

  FlashController get _buildController => FlashController<void>(
        context,
        (_, controller) => BlocProvider<ConnectionCheckCubit>.value(
          value: _connectionCheck,
          child: ConnectionChangeCard(
            controller: controller,
          ),
        ),
      );

  void _connectionListener(ConnectionCheckState state) {
    _timer?.cancel();

    if (state.isDisconnected) {
      if (!(_controller?.isDisposed ?? true)) {
        _controller!.dismiss();
      }
      _controller = _buildController;
      _controller!.show();
    } else if (state.isInternetAvailable) {
      if (_controller?.isDisposed ?? true) {
        _controller = _buildController;
        _controller!.show();
      }
      _timer = Timer(
        const Duration(seconds: 2),
        () => _controller?.dismiss(),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller?.dismiss();
    _onMessage?.cancel();
    super.dispose();
  }

  FlashController? showToast(
    String text, {
    Duration duration = const Duration(
      seconds: 3,
    ),
  }) =>
      FlashController<void>(
        context,
        (_, controller) => Toast(
          controller: controller,
          text: text,
        ),
        duration: duration,
      )..show();

  @override
  Widget build(BuildContext context) =>
      BlocListener<ConnectionCheckCubit, ConnectionCheckState>(
        listenWhen: (previous, current) =>
            !(previous is UnknownConnectionCheckState &&
                !current.isDisconnected),
        listener: (context, state) => _connectionListener(state),
        child: BlocBuilder<InitialNavigationBLoC, InitialNavigationState>(
          builder: (context, state) {
            if (state is FetchedNavigationState) {
              return CurrencyConverterScreen.page;
            }
            return const SplashScreen();
          },
        ),
      );
}
