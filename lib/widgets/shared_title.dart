import 'package:click_click/utils/colors.dart';
import 'package:flutter/material.dart';

class SharedTitle extends StatelessWidget {
  final String? title;
  final String? actionText;
  final VoidCallback? onActionTap;
  final bool isVisible;

  const SharedTitle({
    super.key,
    this.title,
    this.actionText,
    this.onActionTap,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? '',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: black,
            ),
          ),
          GestureDetector(
            onTap: onActionTap,
            child: Text(
              actionText ?? '',
              style: const TextStyle(
                color: primaryBlue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
