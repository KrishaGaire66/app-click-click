import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart'; // Adjust as needed

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;
  final bool? showBackButton;
  final Widget? leading; // NEW: Custom leading widget
  final List<Widget>? actions;
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.showBackButton,
    this.leading,
    this.actions,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.symmetric(horizontal: 10.w),

      leading:
          leading ?? // Use custom leading if provided
          ((showBackButton ?? true)
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 22.sp,
                  ),
                  onPressed: onBack ?? () => Navigator.of(context).pop(),
                )
              : null),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: centerTitle ?? true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
