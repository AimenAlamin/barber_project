import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/image_sliding.dart';
import '../../core/helpers/spacing.dart';
import 'explore_categories_listview.dart';
import 'home_topbar.dart';
import 'popular_item.dart';
import 'search_textfield.dart';
import 'see_all.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.r,
                vertical: 16.0.r,
              ),
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0.r),
                  bottomRight: Radius.circular(20.0.r),
                ),
              ),
              child: Column(
                children: [
                  const HomeTopBar(),
                  verticalSpace(8),
                  const SearchTextfield(),
                ],
              ),
            ),
            verticalSpace(23),
            SizedBox(
              height: 180.h,
              width: double.infinity,
              child: const ImageSlider(),
            ),
            verticalSpace(18),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(
                20.0.r,
                16.0.r,
                20.0.r,
                28.0.r,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ExploreCategoriesListView(),
                  verticalSpace(18),
                  const SeeAll(text: "Popular Salons"),
                  verticalSpace(18),
                  const PopularItem(
                    imageUrl: "assets/images/ImageBarber.png",
                    title: "Captain Barbershop",
                    location: "123 Main Street, Delhi, India",
                    rating: 4.8,
                    reviewCount: 3279,
                  ),
                  const SeeAll(text: "Popular Salons"),
                  verticalSpace(18),
                  const PopularItem(
                    imageUrl: "assets/images/ImageBarber.png",
                    title: "Captain Barbershop",
                    location: "123 Main Street, Delhi, India",
                    rating: 4.8,
                    reviewCount: 3279,
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
