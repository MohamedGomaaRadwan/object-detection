import 'package:flutter/material.dart';
import '../resources/app_colors.dart';

class AppContainer extends StatelessWidget {
  AppContainer({super.key, required this.child, this.color});

  final Widget child;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color ?? AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.disabledColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
