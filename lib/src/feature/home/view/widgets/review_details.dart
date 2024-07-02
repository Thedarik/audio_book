import 'package:flutter/material.dart';


class ReviewDetails extends StatelessWidget {
  final PageController _controller = PageController();
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);
  ReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 200,
        //   child: PageView(
        //     onPageChanged: (index) {
        //       _currentIndexNotifier.value = index;
        //     },
        //     controller: _controller,
        //     children: pages,
        //   ),
        // ),
        //
        // Padding(
        //   padding: EdgeInsets.only(right: 235.w),
        //   child: SmoothPageIndicator(
        //     effect: const ExpandingDotsEffect(
        //         activeDotColor: AppColors.c4838D1,
        //         expansionFactor: 1.1,
        //         dotWidth: 15,
        //         dotHeight: 15,
        //         spacing: 12,
        //         dotColor: Color(0xFFD5D5E3),),
        //         controller: _controller,
        //         // count: pages.length,
        //   ),
        // ),
      ],
    );
  }
}
