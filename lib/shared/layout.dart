import 'package:begho_mobile/constants.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.minPad),
      child: child,
    );
  }
}
