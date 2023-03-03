import 'package:flutter/material.dart';
import 'package:ott_demo/model/actors_model.dart';
import 'package:ott_demo/repository/authorsRepo.dart';

class ActorsProvider with ChangeNotifier {
  bool actorsDeteilsLoading = true;
  Actor? actors;
  BuildContext context;

  ActorsProvider({required this.context});

  actorsAPI({context, id}) async {
    actorsDeteilsLoading = true;
    var url = actors;
    var res = await ActorRepository().getActors(context, url);
    if (res != null) {
      actors = res;
    }

    actorsDeteilsLoading = false;
    notifyListeners();
  }

  reset() {
    actors = null;
    actorsDeteilsLoading = true;
  }
}
