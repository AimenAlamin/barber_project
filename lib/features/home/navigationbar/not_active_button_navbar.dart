import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotActive extends StatelessWidget {
  const NotActive({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: image == 'assets/svgs/scissor.svg' ? 45.h : 20.h,
            width: image == 'assets/svgs/scissor.svg' ? 45.w : 20.w,
          ),
          verticalSpace(2),
          Text(text, style: TextStyles.font12DarkBlueRegular),
        ],
      ),
    );
  }
}
