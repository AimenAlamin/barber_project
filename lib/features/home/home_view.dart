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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTopBar(),
          verticalSpace(8),
          const SearchTextfield(),
          verticalSpace(23),
          SizedBox(
            height: 180.h,
            width: double.infinity,
            child: const ImageSlider(),
          ),
          verticalSpace(18),
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
          )
        ],
      ),
    );
  }
}
