import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreCategoriesListView extends StatelessWidget {
  const ExploreCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Predefined list of categories with corresponding icons
    final categories = [
      {"name": "Haircuts", "icon": "assets/svgs/tabler-icon-scissors.svg"},
      {"name": "Coloring", "icon": "assets/svgs/brush.svg"},
      {"name": "Shampoo", "icon": "assets/svgs/hammer.svg"},
      {"name": "More", "icon": "assets/svgs/layout-grid-add.svg"},
    ];

    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 40.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lighterGray,
                    child: SvgPicture.asset(
                      category['icon']!, // Use category-specific icon
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  Text(
                    category['name']!,
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
