import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

@immutable
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Placeholder();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'SplashScreen StatelessWidget',
            ),
          ),
      );
}
