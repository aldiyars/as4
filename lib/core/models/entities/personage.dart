import 'package:accelerator_task_fourth/core/models/enums/gender.dart';

class Personage {
  bool hasAlive;
  String fullName;
  Gender gender;
  String avatar;
  String position;

  Personage(
      {this.hasAlive, this.fullName, this.gender, this.avatar, this.position});

  String get getStatus {
    return hasAlive ? 'Живой' : 'Мертвый';
  }

  String get getGender {
    return getNameGender(gender);
  }
}
