import 'package:popular_movies/res/constants.dart';

extension MovieDbImage on String {
  String get getMovieDBImage => Constants.movieImagePath + this;

  String get getYoutubeWatchBaseURL => Constants.youtubeWatchBaseURL + this;

  String get getYoutubeThumbnailBaseURl =>
      Constants.youtubeThumbnailBaseURl + this + Constants.youtubeThumbnailImageQuality;
}
