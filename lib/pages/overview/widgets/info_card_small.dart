import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback? onTap;

  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    required this.topColor,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? active : lightGrey,
              width: .5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                color: isActive ? active : lightGrey,
                size: 24,
                weight: FontWeight.w300,
              ),
              CustomText(
                text: value,
                color: isActive ? active : lightGrey,
                size: 24,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
