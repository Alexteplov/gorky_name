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

//Фоновая картинка
  static const String bgImage = 'image/main_background.jpg';
  static const String logoImg = 'image/LIB_logotype.png';
  static const String bgImgAfisha = 'image/bgImgAfisha.png';
  static const String bgImgAfishaWeekends = 'image/bgImgAfishaWeekends.jpg';
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

  //structure library
  static const String routeLibiraryStructure = '/library_structure';

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
  static String roomMeetingEvent =
      '''Зал встреч и событий – это одновременно и лекционный, и концертный, и выставочный зал, зал для показа фильмов и спектаклей, для проведения детских праздников, музыкальных вечеров, круглых столов и мастер-классов. Не пропустите новые встречи и выставки!''';
  static String roomReaders =
      '''Зал чтения и общения для дошкольников и младших школьников – место самостоятельного выбора книг, игровая площадка для дошкольников, мини-зал для групп младших школьников «Библиопродленка» с возможностью выбора и чтения книг, просмотра фильмов, работы за компьютером и познавательных занятий. Здесь настоящее раздолье для ума и для души: книжки-игрушки, научно-познавательные книги, художественная литература, сказки, развивающие настольные и компьютерные игры. Свои книги найдут здесь и заботливые взрослые. Это книги о воспитании и детском чтении. ''';
  static String sectorOperatinsInfo =
      '''Сектор оперативной информации знакомит с новинками книг и периодики и предоставляет автоматизированные рабочие места для доступа к ресурсам Национальной электронной детской библиотеки (НЭДБ) и Национальной электронной библиотеки (НЭБ).''';
  static String freeReadersPlace =
      '''Свободная читательская площадка - самое большое книжное пространство для самостоятельного выбора изданий с кафедрой выдачи и станцией самостоятельной книговыдачи. Здесь всегда есть нужные художественные тексты для уроков литературы, а также много книг на любой вкус, которые обязательно захочется почитать «для себя».''';
  static String silendHole =
      '''Территория «тихого чтения» - отдельное помещение в стиле «гостиной с камином» для любителей уединиться и побыть в «мире без гаджетов». Здесь можно почитать в уютных креслах, поиграть в шахматы, послушать чтение вслух или собраться литературным клубом.''';
  static String roomTransformer =
      '''Зал – трансформер с фондом научно-популярной, справочной и научно-художественной литературы, а также литературы нашего края и о нашем крае.''';
  static String smallRoomTeenClub =
      '''В мини-зал «Teen-клуб» можно прийти дружной компанией просто пообщаться друг с другом среди книг, сделать домашнее задание, обсудить насущные вопросы, вместе посмотреть понравившийся фильм, спортивную передачу, послушать винил, поиграть в настольные игры, выбор которых разнообразен.''';
  static String experimentalStation =
      '''Зал мастер-классов «Опытная станция» предназначен для проведения кружковых занятий, мастер-классов, видеоконференций и других активностей.''';
  static String coordinationDepartment =
      '''Кроме того, для профессионалов, для студентов библиотечной и педагогической специальностей и родителей работает координационно-методический отдел. В фонде отдела литературоведческие труды, литература по психологии и педагогике, по методике воспитания и обучения детей, по истории библиотечного дела, периодические издания библиотековедческой, литературоведческой и педагогической тематики, сценарии школьных, семейных, литературных, новогодних праздников, родительских собраний и классных часов, игровых и познавательных занятий самой разной тематики.''';
  static String informationLibraryDepartment =
      '''Информационно-библиографический отдел поможет подобрать литературу к реферату, проекту или выпускной квалификационной работе. Выполнит сложный тематический запрос.''';
}
