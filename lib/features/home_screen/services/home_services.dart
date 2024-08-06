
import 'package:dio/dio.dart';
import '../../../consts/app_endpoints.dart';
import '../../../data.dart';
import '../../../helper/dio/dio_helper.dart';
import '../../../model/MovieModel.dart';

class HomeServices{
 static Future<MovieResponse?> getMovies() async {
    dynamic response;
    try {
      response = await DioUtilNew.dio!.get( '${endpoint[Endpoint.getMovies]}?api_key=$apiKey');
      print(response);
      return MovieResponse.fromJson(response.data);
    } on DioError catch (e) {
      print("----------------");
      print("error : ${e.message}");
    }
  }
}