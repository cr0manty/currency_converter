import 'package:currency_converter/src/cubit/connection_check.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class ConnectionChangeCard extends StatelessWidget {
  final FlashController controller;

  const ConnectionChangeCard({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'ConnectionChangeCard StatelessWidget',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ConnectionCheckCubit, ConnectionCheckState>(
        builder: (context, state) {
          Color color = Colors.transparent;
          String text = '';

          if (state.isInternetAvailable) {
            color = context.theme.successColor;
            text = 'connected';
          } else if (state.isConnecting) {
            color = context.theme.connectingColor;
            text = 'Connecting';
          } else if (state.isDisconnected) {
            color = context.theme.disconnectedColor;
            text = 'no_connection';
          }

          return Flash<void>.bar(
            backgroundColor: color,
            margin: const EdgeInsets.only(top: 30),
            controller: controller,
            brightness: context.theme.brightness,
            position: FlashPosition.top,
            borderRadius: context.theme.borderRadius,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Text(
                text,
                style: context.textTheme.bodyText2!.copyWith(
                  color: context.theme.lightColor,
                ),
              ),
            ),
          );
        },
      );
}
