import 'package:fluent_ui/fluent_ui.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const ResponsiveWidget({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(constraints.maxWidth);

        if (constraints.maxWidth > 1400) {
          return desktop;
        } else if (constraints.maxWidth <= 1400 && constraints.maxWidth > 800) {
          return tablet;
        }

        return mobile;
      },
    );
  }
}
