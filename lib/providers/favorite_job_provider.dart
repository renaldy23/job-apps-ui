import 'package:flutter/cupertino.dart';
import 'package:jobby/models/favorite_job_model.dart';

class FavoriteJobProvider with ChangeNotifier {
  List<FavoriteJobModel> _favoriteJob = [];

  List<FavoriteJobModel> get favoriteJob => _favoriteJob;

  set favoriteJob(List<FavoriteJobModel> favoriteJob) {
    _favoriteJob = favoriteJob;
    notifyListeners();
  }

  addFavorite(String image, String job, String company) {
    FavoriteJobModel favoriteJob =
        FavoriteJobModel(image: image, job: job, company: company);
    _favoriteJob.add(favoriteJob);

    notifyListeners();
  }
}
