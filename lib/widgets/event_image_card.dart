import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:click_click/utils/colors.dart'; // Make sure mutedGray is defined here

class EventCard extends StatelessWidget {
  final String? title;
  final String? location;
  final String? date;
  final String? month;
  final String? imageUrl;
  final Function()? onTap;
  const EventCard({
    super.key,
    this.title,
    this.location,
    this.date,
    this.month,
    this.onTap,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        width: 1.sw * 0.96, // 99% of screen width
        height: 276.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 1.r,
          //     // offset: Offset(0, 2.h),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image area with date badge
            Stack(
              children: [
                Container(
                  height: 180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mutedGray.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16.r),
                    ),
                  ),
                  child:ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
                    child: imageUrl != null && imageUrl!.isNotEmpty
                        ? Image.network(
                            imageUrl!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        : Container(color: mutedGray.withOpacity(0.1)),
                  ),
                
                ),
                Positioned(
                  right: 10.w,
                  top: 0,
                  child: Container(
                    width: 48.w,
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(24.r), // Full curve at bottom
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          date ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          month ?? "",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Event details
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Text(
                        location ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12.sp,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: primaryBlue.withValues(
                            alpha: 0.08,
                          ), // Light blue background for "Going" button
                          borderRadius: BorderRadius.circular(
                            20.r,
                          ), // Highly rounded corners
                          // Removed explicit border as it appears to be part of the background color in the image.
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(
                                alpha: 0.03,
                              ), // Very subtle shadow
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: Offset(0, 1), // Shadow slightly below
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize
                              .min, // Make the row only take up needed space
                          children: [
                            Text(
                              'Following',
                              style: TextStyle(
                                color: primaryBlue, // Blue text color
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 2.w), // Space between text and icon
                            Icon(
                              Icons.keyboard_arrow_down, // Down arrow icon
                              color: primaryBlue, // Blue icon color
                              size: 18.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
