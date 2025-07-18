import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black.withValues(alpha: 0.80),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
