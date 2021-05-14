enum Gender { Male, Female, Unknown }

String getNameGender(Gender gender) {
  String name;
  switch (gender) {
    case Gender.Male:
      name = "Мужской";
      break;
    case Gender.Female:
      name = "Женский";
      break;
    case Gender.Unknown:
      name = "Неизвестный";
      break;
    default:
      name = "Неизвестный";
      break;
  }

  return name;
}
