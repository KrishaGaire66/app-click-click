import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:click_click/utils/colors.dart';

class EventDetail extends StatelessWidget {
  final String? eventName;
  final String? date;
  final String? time;
  final String? location;
  final String? description;
  final String? imageUrl;

  const EventDetail({
    Key? key,
    this.eventName,
    this.date,
    this.time,
    this.location,
    this.description,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          if (imageUrl != null && imageUrl!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.network(
                imageUrl!,
                height: 200.h,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Center(child: Icon(Icons.image, color: Colors.grey)),
              ),
            )
          else
            SizedBox(height: 20.h),

          SizedBox(height: 20.h),

          // Title
          Text(
            eventName ?? '',
            style: TextStyle(fontSize: 22.sp, color: primaryBlue),
          ),
          SizedBox(height: 20.h),

          // Date & Time
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.calendar_today, color: primaryBlue, size: 25.w),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date ?? '',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    time ?? '',
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),

          // Location
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: primaryBlue, size: 25.w),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location ?? '',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'View Map',
                    style: TextStyle(fontSize: 14.sp, color: mutedGray),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),

          // Description
          Text(
            'Description:',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: primaryBlue,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            description ?? '',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
          ),
          SizedBox(height: 20.h),

          // Read More+ Button
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Text(
                'Read More+',
                style: TextStyle(
                  color: primaryBlue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
