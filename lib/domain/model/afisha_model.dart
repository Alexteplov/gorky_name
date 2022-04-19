import 'package:hive/hive.dart';

//part 'afisha_model.g.dart';

@HiveType(typeId: 0)
class AfishaModel extends HiveObject {
  AfishaModel({required this.id, required this.show});

  @HiveField(0)
  String id;
  @HiveField(1)
  bool show;
}
