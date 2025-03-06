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
            Text(
              "Hi, Riya Gautam",
              style: TextStyles.font16DarkBlueBold,
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
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                ],
              ),
            ),
          ],
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
