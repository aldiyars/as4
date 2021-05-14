import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:accelerator_task_fourth/core/models/enums/gender.dart';
import 'package:accelerator_task_fourth/core/resources/images.dart';

final List<Personage> personageList = [
  Personage(
      avatar: Images.personage_1,
      hasAlive: true,
      fullName: "Рик Cанчез",
      position: "Человек",
      gender: Gender.Male),
  Personage(
      avatar: Images.personage_2,
      hasAlive: true,
      fullName: "Директор Агентства",
      position: "Человек",
      gender: Gender.Male),
  Personage(
      avatar: Images.personage_3,
      hasAlive: true,
      fullName: "Морти Смит",
      position: "Человек",
      gender: Gender.Male),
  Personage(
      avatar: Images.personage_4,
      hasAlive: true,
      fullName: "Саммер Смит",
      position: "Человек",
      gender: Gender.Male),
  Personage(
      avatar: Images.personage_5,
      hasAlive: false,
      fullName: "Альберт Эйнштейн",
      position: "Человек",
      gender: Gender.Female),
  Personage(
      avatar: Images.personage_6,
      hasAlive: false,
      fullName: "Алан Райлс",
      position: "Человек",
      gender: Gender.Unknown),
];