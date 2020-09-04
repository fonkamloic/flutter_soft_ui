import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SoftButton extends StatelessWidget {
  final IconData icon;
  final bool isPressed;

  const SoftButton({this.icon, this.isPressed});
  @override
  Widget build(BuildContext context) {
    final List<Color> untapColors = [
      Colors.grey[200],
      Colors.grey[300],
      Colors.grey[400],
      Colors.grey[500],
    ];
    final List<Color> tapColors = [
      Colors.grey[700],
      Colors.grey[600],
      Colors.grey[500],
      Colors.grey[200],
    ];
    final List<double> untapStops = [
      0,
      0.1,
      0.3,
      0.8,
      // 1,
    ];

    final List<double> tapStops = [
      0,
      0.1,
      0.3,
      0.8,
      // 1,
    ];

    final Container child = Container(
      padding: EdgeInsets.all(20),
      child: Icon(icon, size: 37, color: Colors.grey[800]),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[600],
                offset: Offset(4, 4),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
              colors: isPressed ? tapColors : untapColors,
              stops: isPressed?  tapStops : untapStops,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );
    final Widget tapped = Container(
      padding: EdgeInsets.all(5),
      child: child,
    );
    return isPressed ? tapped : child;
  }
}
