import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class LargeAppBarWrapper extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isBackButtonEnabled;
  final Widget? action;
  final VoidCallback? onTap;
  final String title;

  const LargeAppBarWrapper({
    required this.title,
    this.isBackButtonEnabled = true,
    this.action,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoSliverNavigationBar(
        border: Border.all(
          style: BorderStyle.none,
        ),
        padding: EdgeInsetsDirectional.only(
          start: Platform.isIOS ? 8 : 0,
          end: 8,
        ),
        leading: Builder(
          builder: (context) {
            if (isBackButtonEnabled) {
              if (Platform.isIOS) {
                return CupertinoBackButton(
                  onTap: onTap,
                );
              }
              if (Platform.isAndroid) {
                return BackButton(
                  color: context.theme.indicatorColor,
                  onPressed: onTap ?? Navigator.of(context).maybePop,
                );
              }
            }
            return const SizedBox.shrink();
          },
        ),
        backgroundColor: Colors.transparent,
        brightness: context.theme.brightness,
        trailing: action,
        largeTitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(title),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'LargeAppBarWrapper StatelessWidget',
            ),
          ),
      );
}

@immutable
class CupertinoBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CupertinoBackButton({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap ?? Navigator.of(context).maybePop,
        child: Semantics(
          container: true,
          excludeSemantics: true,
          label: 'Back',
          button: true,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.chevron_left,
                color: context.theme.indicatorColor,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 2,
                  top: 2,
                ),
                child: FittedBox(
                  child: Text(
                    'Back',
                    style: context.textTheme.bodyText2!.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'CupertinoBackButton StatelessWidget',
            ),
          ),
      );
}
