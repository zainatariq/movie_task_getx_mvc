

import 'package:flutter/cupertino.dart';
import 'package:movie_task/features/details_screen/componants/poster/poster_image_widget.dart';
import 'package:movie_task/features/details_screen/componants/poster/raing_widget.dart';
 import '../../../../model/MovieModel.dart';

Widget getMoviePosterAndRatingSection(BuildContext context,Movie _movie ) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      getMoviePoster(context,_movie),
      getRating(_movie),
    ],
  );
}
