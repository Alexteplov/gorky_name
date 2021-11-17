import 'package:flutter/material.dart';
import 'package:gorky_name/data/afisha_data.dart';

class GlobalVar {
  static const String nameLib =
      'Центральная городская детская библиотека \nим. А. М. Горького';
//пункты меню
  static const String libInNetwork = 'Библиотека в сети';
  static const String eCatalog = 'Электронный каталог';
  static const String colleagues = 'Сотрудники';
  static const String booksCoolection = 'Книжная коллекция';
  static const String billboard = 'Афиша';
  static const String structure = 'Структура';
  static const String elLibs = 'Электронные библиотеки';
  static const String elLitress = 'ЛИТРЕС';
  static const String elNEB = 'НЭБ';
  static const String elNEBFull = 'Национальная электронная библиотека';
  static const String elNEDB = 'НЭДБ';
  static const String elNEDBFull =
      'Национальная электронная детская библиотека';
  static const String rules4Readers = 'Правила для читателей';

//QR codes
  static const String qrNEDB = 'image/QR_nedb.png';
  static const String qrNEB = 'image/QR_neb.png';
  static const String qrLitress = 'image/QR_litress.png';

  //коды для ссылок на соц.сети
  static const String qrLib = 'image/QR_lib.png';
  static const String qrContact = 'image/QR_vk.png';
  static const String qrInstagram = 'image/QR_instagram.png';
  static const String qrTikTok = 'image/QR_tiktok.png';

//Библиотека в сети
  static const String libInNet = 'Сайт www.db74.ru';
  static const String inContact = 'ВКонтакте';
  static const String instagram = 'Instagram';
  static const String tiktok = 'TikTok';

  //лого
  static const String logoLibInNet = 'image/http_logo.png';
  static const String logoInContact = 'image/vk_logo.png';
  static const String logoInstagram = 'image/instagram_logo.png';
  static const String logoTiktok = 'image/tiktok_logo.png';

//Фоновая картинка
  static const String bgImage = 'image/main_background.jpg';
  static const String logoImg = 'image/LIB_logotype.png';
  static const String bgImgAfisha = 'image/bgImgAfisha.png';
  static const String bgImgAfishaWeekends = 'image/bgImgAfishaWeekends.jpg';
  static const String bgImgAfishaWeekendsW =
      'image/bgImgAfishaWeekendsWinter.jpg';
  static const String logoAppBar = 'image/logo_app_bar.png';
//Маршруты роутинга(переходов)
  static const String routeMainMenu = '/';
  //afisha
  static const String routeAfisha01 = '/afisha';
  static const String routeAfisha02 = '/afisha_second';
  static const String routeAfisha03 = '/afisha_third';
  static const String routeAfisha03a = '/afisha_thirda';
  static const String routeAfishaW01 = '/afisha_saturday';
  static const String routeAfishaW02 = '/afisha_sunday';
  static const String routeAfishaW01a = '/afisha_saturdaya';
  static const String routeAfishaW02a = '/afisha_sundaya';

  //electronic librarys
  static const String routeElLibs = '/main_el_lib';
  static const String routeElLibLitres = '/main_el_litres';
  static const String routeElLibNEB = '/main_el_NEB';
  static const String routeElLibNEDB = '/main_el_NEDB';

  //rules for readers
  static const String routeRules4Readers = '/rules_for_readers';

  //library in Newtwork
  static const String routeLibInNetwork = '/lib_in_network';
  //на страницу qr кодов
  static const String routeLib = '/lib_qr';
  static const String routeInContact = '/inContact_qr';
  static const String routeInstagram = '/instagram_qr';
  static const String routeTikTok = '/tikTok_qr';

  //structure library
  static const String routeLibiraryStructure = '/library_structure';
  static const String routeLibiraryStructureA = '/library_structure_a';
  static const String routeLibiraryStructureB = '/library_structure_b';

// Пока не используется не получается развернуть через спред оператор.
  static List<AfishaData> listDay01 = [day01, day02];
  static AfishaData day01 = AfishaData(
      '25 октября - понедельник',
      {
        '14:00': 'Час интересных сообщений "Безопасность в городе" (7-10 лет)',
        '15:00': 'Квиз "Литературная интуиция" (от 14 лет)',
        '16:00':
            'Час кино. Просмотр фильма "Там, где мечтают медведи" (от 10 лет)',
        '16:30':
            'Литературно-игровое занятие "Ключ от сказки Романа Сефа" (5-7 лет)',
      },
      100);
  static AfishaData day02 = AfishaData(
      '26 октября - вторник',
      {
        '10:00':
            'Литературно-игровое занятие "Ключ от сказки Романа Сефа" (5-7 лет)',
        '12:00':
            'Мастер-класс "Открытка для любимых бабушек и дедушек" (от 7 лет)',
        '14:00': 'Квиз-игра "Наука — это круто" (от 8 лет)',
        '15:00':
            'Литературно-музыкальный праздник "Осень, Осень, в гости просим!" (4-8 лет)',
        '16:00': 'Тренинг по актерскому мастерству "Верю - не верю" (от 8 лет)',
      },
      300);
}

class StructureData {
  //изображения
  static Color colorRed = const Color(0xFFFF170F);
  static String meetingEventHall = 'image/structure/meeting_event_hall.jpg';
  static String redBookmark = 'image/structure/red_bookmark.png';

  static Color colorLiteBlue = const Color(0xFF459DB7);
  static String smallKidsHall = 'image/structure/small_kids_hall.jpg';
  static String liteBlueBookmark = 'image/structure/lite_blue_bookmark.png';

  static Color colorYellow = const Color(0xFFFFFF00);
  static String sectorOperatinsInfoHall =
      'image/structure/sector_operation_info.jpg';
  static String yellowBookmark = 'image/structure/yellow_bookmark.png';

  static Color colorMaroon = const Color(0xFFB00000);
  static String freeReadersPlaceHall =
      'image/structure/freeReadersPlace_hall.jpg';
  static String maroonBookmark = 'image/structure/maroon_bookmark.png';

  static Color colorOrange = const Color(0xFFFF8000);
  static String silendHoleHall = 'image/structure/silent_hall.jpg';
  static String orangeBookmark = 'image/structure/orange_bookmark.png';

  static Color colorGreen = const Color(0xFF00BB00);
  static String roomTransformerHall = 'image/structure/room_transformer.jpg';
  static String greenBookmark = 'image/structure/green_bookmark.png';

  static Color colorTeen = const Color(0xFF098E8B);
  static String smallRoomTeenClubHall = 'image/structure/teen_club.jpg';
  static String teenBookmark = 'image/structure/teen_bookmark.png';

  static Color colorBlue = const Color(0xFF0D7DAD);
  static String experimentalStationHall = 'image/structure/station_max.jpg';
  static String blueBookmark = 'image/structure/blue_bookmark.png';

  static Color colorWhite = const Color(0xFFFFFFFF);
  static String whiteBookmark = 'image/structure/white_bookmark.png';

  static String roomMeetingEventHead = 'Зал встреч и событий';
  static String roomMeetingEvent =
      'это одновременно и лекционный, и концертный, и выставочный зал, зал для показа фильмов и спектаклей, для проведения детских праздников, музыкальных вечеров, круглых столов и мастер-классов. Не пропустите новые встречи и выставки!';
  static String roomReadersHead =
      'Зал чтения и общения для дошкольников и младших школьников';
  static String roomReaders =
      ''' – место самостоятельного выбора книг, игровая площадка для дошкольников, мини-зал для групп младших школьников «Библиопродленка» с возможностью выбора и чтения книг, просмотра фильмов, работы за компьютером и познавательных занятий. Здесь настоящее раздолье для ума и для души: книжки-игрушки, научно-познавательные книги, художественная литература, сказки, развивающие настольные и компьютерные игры. Свои книги найдут здесь и заботливые взрослые. Это книги о воспитании и детском чтении. ''';
  static String sectorOperatinsInfoHead = 'Сектор оперативной информации';
  static String sectorOperatinsInfo =
      '''знакомит с новинками книг и периодики и предоставляет автоматизированные рабочие места для доступа к ресурсам Национальной электронной детской библиотеки (НЭДБ) и Национальной электронной библиотеки (НЭБ).''';
  static String freeReadersPlaceHead = 'Свободная читательская площадка';
  static String freeReadersPlace =
      '''самое большое книжное пространство для самостоятельного выбора изданий с кафедрой выдачи и станцией самостоятельной книговыдачи. Здесь всегда есть нужные художественные тексты для уроков литературы, а также много книг на любой вкус, которые обязательно захочется почитать «для себя».''';
  static String silendHoleHeader = 'Территория «тихого чтения»';
  static String silendHole =
      '''отдельное помещение в стиле «гостиной с камином» для любителей уединиться и побыть в «мире без гаджетов». Здесь можно почитать в уютных креслах, поиграть в шахматы, послушать чтение вслух или собраться литературным клубом.''';
  static String roomTransformerHeader = 'Зал – трансформер';
  static String roomTransformer =
      '''с фондом научно-популярной, справочной и научно-художественной литературы, а также литературы нашего края и о нашем крае.''';
  static String smallRoomTeenClubHeader = 'В мини-зал «Teen-клуб»';
  static String smallRoomTeenClub =
      '''можно прийти дружной компанией просто пообщаться друг с другом среди книг, сделать домашнее задание, обсудить насущные вопросы, вместе посмотреть понравившийся фильм, спортивную передачу, послушать винил, поиграть в настольные игры, выбор которых разнообразен.''';
  static String experimentalStationHeader =
      'Зал мастер-классов «Опытная станция» ';
  static String experimentalStation =
      '''предназначен для проведения кружковых занятий, мастер-классов, видеоконференций и других активностей.''';
  static String coordinationDepartmentHeader =
      'координационно-методический отдел';
  static String coordinationDepartment =
      'Кроме того, для профессионалов, для студентов библиотечной и педагогической специальностей и родителей работает ';
  static String coordinationDepartmentA =
      '. В фонде отдела литературоведческие труды, литература по психологии и педагогике, по методике воспитания и обучения детей, по истории библиотечного дела, периодические издания библиотековедческой, литературоведческой и педагогической тематики, сценарии школьных, семейных, литературных, новогодних праздников, родительских собраний и классных часов, игровых и познавательных занятий самой разной тематики.';
  static String informationLibraryDepartmentHeader =
      'Информационно-библиографический отдел';
  static String informationLibraryDepartment =
      '''поможет подобрать литературу к реферату, проекту или выпускной квалификационной работе. Выполнит сложный тематический запрос.''';
}
