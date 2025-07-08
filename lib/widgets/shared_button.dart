import 'package:click_click/utils/colors.dart';
import 'package:flutter/material.dart';

class Shared_Button extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const Shared_Button({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryBlue,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            //elevation: 0,
          ),
          child: Text(
            text ?? '', // <- Use text from parameter
            style: const TextStyle(
              color: pureWhite,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
