enum Sex { Male, Female, Unknown }

String getNameGender(Sex sex) {
  String name;
  switch (sex) {
    case Sex.Male:
      name = "Мужской";
      break;
    case Sex.Female:
      name = "Женский";
      break;
    case Sex.Unknown:
      name = "Неизвестный";
      break;
    default:
      name = "Неизвестный";
      break;
  }

  return name;
}
