import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsquare_barber_project/core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.0,
              width: 70.0,
              child: Image.asset("assets/images/splashImg.png"),
            ),
          ],
        ),
        Text(
          "Hi, Riya Gautam",
          style: TextStyles.font16DarkBlueBold,
        ),
        verticalSpace(1),
        Text(
          "Delhi, India",
          style: TextStyles.font12DarkBlueRegular,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        )
      ],
    );
  }
}
