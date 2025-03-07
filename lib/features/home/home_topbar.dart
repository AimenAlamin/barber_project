import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsquare_barber_project/core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0.r),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Riya Gautam",
                style: TextStyles.font16WhiteMedium,
              ),
              verticalSpace(2),
              RichText(
                text: TextSpan(
                  children: [
                    const WidgetSpan(
                      child: Icon(
                        Icons.location_on,
                        color: ColorsManager.mainBlue,
                        size: 16,
                      ),
                    ),
                    TextSpan(
                      text: " Delhi, India",
                      style: TextStyles.font14WhiteRegular,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 20.0.r,
            backgroundColor: const Color.fromARGB(255, 28, 28, 28),
            child: SvgPicture.asset(
              'assets/svgs/bell.svg',
            ),
          )
        ],
      ),
    );
  }
}
