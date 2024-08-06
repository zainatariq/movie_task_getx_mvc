import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../consts/app_assets.dart';
import '../../consts/style.dart';
import '../../model/MovieModel.dart';
import '../home_screen/componants/custom_movie_cars.dart';

class AllMoviesScreen extends StatelessWidget {
  List list = <Movie>[];

  AllMoviesScreen({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:   IconButton(
        icon: Icon(
        Icons.arrow_back_ios,
        color: K.whiteColor,
        size: 25.sp,
      ),
      onPressed: () {
        Get.back();
      },
    ),
        title: Text(
          'All Movies',
          style: K.boldWhiteTextStyle,

        ),
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80.h),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.backgroundImage),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 3.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: .6,
            ),
            padding: EdgeInsets.all(10.0),
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomMovieCard(movie: list[index]);
            },
          ),
        ),
      ),
    );
  }
}
