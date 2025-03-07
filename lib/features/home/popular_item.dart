import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsquare_barber_project/core/helpers/extensions.dart';
import 'package:nsquare_barber_project/core/routing/routes.dart';
import 'package:nsquare_barber_project/core/theming/widgets/app_text_button.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class PopularItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final double rating;
  final int reviewCount;

  const PopularItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              imageUrl,
              width: 80.w,
              height: 80.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(10),

          // Text & Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: TextStyles.font16BlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(4),

                // Location with icon
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue, size: 16.w),
                    horizontalSpace(4),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyles.font14DarkBlueMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                verticalSpace(6),

                // Rating with icon
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.blue, size: 16.w),
                    horizontalSpace(1),
                    Text(
                      rating.toString(),
                      style: TextStyles.font14DarkBlueMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    horizontalSpace(4),
                    Text(
                      "($reviewCount reviews)",
                      style: TextStyles.font13GrayMedium,
                    ),
                  ],
                ),
                verticalSpace(8),

                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: AppTextButton(
                          backgroundColor: Colors.white,
                          buttonText: "Book Now",
                          textStyle: const TextStyle(color: Colors.blue),
                          onPressed: () {}),
                    ),
                    horizontalSpace(5),
                    Expanded(
                      child: AppTextButton(
                          buttonText: "View Details",
                          textStyle: const TextStyle(color: Colors.white),
                          onPressed: () {
                            context.pushNamed(Routes.openView);
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
