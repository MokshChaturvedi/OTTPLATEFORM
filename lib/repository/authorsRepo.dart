import 'package:ott_demo/model/actors_model.dart';
import 'package:ott_demo/utils/apiReleted/service.dart';

class ActorRepository {
  getActors(context, url) async {
    List<Actor> actor;
    var response = await Services().getRequest(context: context, url: url);
    //response);
    final item = response['data'];
    actor = List.generate(item.length, (index) => Actor.fromJson(item[index]))
        .toList();
    //subjects.length);
    return actor;
  }
}
