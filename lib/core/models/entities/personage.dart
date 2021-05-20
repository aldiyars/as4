import 'package:accelerator_task_fourth/core/models/enums/gender.dart';

class Personage {
  bool hasAlive;
  String fullName;
  Sex sex;
  String avatar;
  String race;
  String description;
  String placeOfBirth;
  String location;

  Personage(
      {this.hasAlive,
      this.fullName,
      this.sex,
      this.avatar,
      this.race,
      this.description,
      this.location,
      this.placeOfBirth});

  String get getStatus {
    return hasAlive ? 'Живой' : 'Мертвый';
  }

  String get getSex {
    return getNameGender(sex);
  }
}
