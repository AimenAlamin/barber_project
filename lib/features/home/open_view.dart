import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nsquare_barber_project/core/helpers/spacing.dart';

class OpenView extends StatefulWidget {
  const OpenView({super.key});

  @override
  State<OpenView> createState() => _OpenViewState();
}

class _OpenViewState extends State<OpenView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> _images = [
    'assets/images/FreshCut.png',
    'assets/images/FreshCut.png',
    'assets/images/FreshCut.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Section with Background Image and Navigation
          Stack(
            children: [
              // Background Image Slider
              SizedBox(
                height: 350.h,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _images[index],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),

              // Page Indicators
              Positioned(
                bottom: 20.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _images.length,
                    (index) => Container(
                      width: _currentPage == index ? 20.w : 8.w,
                      height: 8.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ),
                ),
              ),

              // Back Button and More Options
              Positioned(
                top: 40.h,
                left: 16.w,
                right: 16.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(13, 13, 18, 0.5),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: IconButton(
                        icon: const Icon(LucideIcons.arrowLeft,
                            color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(13, 13, 18, 0.5),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: IconButton(
                        icon: const Icon(LucideIcons.moreVertical,
                            color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Details Section - Takes remaining space
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Classic Cuts Barber Shop',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Text(
                            'Open',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            size: 16.sp, color: Colors.blue),
                        SizedBox(width: 4.w),
                        Text(
                          '123 Main Street, Delhi, India',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16.sp, color: Colors.blue),
                        Text(
                          ' 4.8',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.blue,
                          ),
                        ),
                        horizontalSpace(8),
                        Text(
                          '(3,279 reviews)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildActionButton(
                          icon: LucideIcons.messageCircle,
                          label: 'Message',
                          onTap: () {},
                        ),
                        _buildActionButton(
                          icon: LucideIcons.phone,
                          label: 'Call',
                          onTap: () {},
                        ),
                        _buildActionButton(
                          icon: LucideIcons.mapPin,
                          label: 'Direction',
                          onTap: () {},
                        ),
                        _buildActionButton(
                          icon: LucideIcons.share2,
                          label: 'Share',
                          onTap: () {},
                        ),
                      ],
                    ),
                    verticalSpace(60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Our Specialist',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildSpecialistAvatar('assets/images/Intersect.png'),
                        _buildSpecialistAvatar(
                            'assets/images/Intersect (1).png'),
                        _buildSpecialistAvatar(
                            'assets/images/Intersect (2).png'),
                      ],
                    ),
                    SizedBox(height: 100.h), // Space for bottom button
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              'Book Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 24.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialistAvatar(String imageUrl) {
    return Container(
      width: 60.w,
      height: 60.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 176, 226, 249),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
