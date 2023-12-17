import 'package:flutter/material.dart';

class GradientVideoBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const GradientVideoBackground({
    super.key,
    this.colors = const [Colors.transparent, Colors.black87],
    this.stops = const[0.0, 1.0]
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
      ),
    );
  }
}