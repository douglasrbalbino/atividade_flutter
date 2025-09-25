import 'package:flutter/material.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({required this.page})
    : super(
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => page,
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0), // Começa na direita
                end: Offset.zero, // Termina no centro
              ).animate(animation),
              child: child,
            ),
      );
}
