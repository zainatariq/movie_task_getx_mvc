import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../helper/dio/dio_helper.dart';
import '../../../model/MovieModel.dart';
import '../services/home_services.dart';

class MovieController extends GetxController {
  final HomeServices ?homeServices;
  RxList<Movie> movies = <Movie>[].obs;
  final isLoading=false.obs;
  MovieController({  this.homeServices});



  @override
  void onInit() {
    super.onInit();
    fetchMovies();
  }

  fetchMovies() async {
    isLoading.value=true;
   final res=await HomeServices.getMovies();
    movies.value =res!.results;

    isLoading.value=false;

  }
}

