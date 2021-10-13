class GlobalVar {
  static const String nameLib =
      'Центральная городская детская библиотека им. А. М. Горького';
//пункты меню
  static const String billboard = 'Афиша';
  static const String structure = 'Структура';
  static const String elLibs = 'Электронные библиотеки';
  static const String elLitress = 'ЛИТРЕС';
  static const String elNEB = 'НЭБ';
  static const String elNEBFull = 'Национальная электронная библиотека';
  static const String elNEDB = 'НЭДБ';
  static const String elNEDBFull =
      'Национальная электронная детская библиотека';
//QR codes
  static const String qrNEDB = 'image/QR_nedb.png';
  static const String qrNEB = 'image/QR_neb.png';
  static const String qrLitress = 'image/QR_litress.png';

//Фоновая картинка
  static const String bgImage = 'image/main_background.jpg';
  static const String logoImg = 'image/LIB_logotype.png';
  static const String bgImgAfisha = 'image/bgImgAfisha.png';
  static const String bgImgAfishaWeekends = 'image/bgImgAfishaWeekends.jpg';
//Маршруты роутинга(переходов)
  static const String routeMainMenu = '/';
  //afisha
  static const String routeAfisha = '/afisha';
  static const String routeAfisha01 = '/afisha_second';
  static const String routeAfisha02 = '/afisha_third';
  static const String routeAfishaW01 = '/afisha_saturday';
  static const String routeAfishaW02 = '/afisha_sunday';
  //electronic librarys
  static const String routeElLibs = '/main_el_lib';
  static const String routeElLibLitres = '/main_el_litres';
  static const String routeElLibNEB = '/main_el_NEB';
  static const String routeElLibNEDB = '/main_el_NEDB';
}
