import 'package:flutter/material.dart';

class MainSettings {
  static int duration2MainMenu =
      5 * 60; // 5 min time for go to main screen if not active
}

class GlobalVar {
  static const login = 'LibAdm';
  static const password = 'AlvbRisko90';
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
  static const String elLitress = 'ЛИТРЕС  ';
  static const String elNEB = 'НЭБ  ';
  static const String elNEBFull = 'Национальная электронная библиотека';
  static const String elNEDB = 'НЭДБ  ';
  static const String elNEDBFull =
      'Национальная электронная детская библиотека';
  static const String rules4Readers = 'Правила для читателей';

  static const String elCatalogChildren =
      'Электронный каталог книг для детей 8-10 лет';

//Книжные коллекции
  static const String booksCollectionTravel = 'Великие русские путешественники';
  static const String booksCollectionRussia = 'Книги о России';
  static const String booksCollectionHistory = 'Пешком в историю';
  static const String booksCollectionGorky =
      'Коллекция детских изданий XX века о М.Горьком';

//QR codes
  static const String qrNEDB = 'image/QR_nedb.png';
  static const String qrNEB = 'image/QR_neb.png';
  static const String qrLitress = 'image/QR_litress.png';

  //коды для ссылок на соц.сети
  static const String qrLib = 'image/QR_lib.png';
  static const String qrContact = 'image/QR_vk.png';
  static const String qrInstagram = 'image/QR_instagram.png';
  static const String qrTikTok = 'image/QR_tiktok.png';
  static const String qrRuStore = 'image/QR_RuStore.jpg';

//Библиотека в сети
  static const String libInNet = 'Сайт www.db74.ru';
  static const String inContact = 'ВКонтакте';
  static const String instagram = 'Instagram';
  static const String tiktok = 'TikTok';
  static const String rustore = 'Мобильное приложение';

  //лого
  static const String logoLibInNet = 'image/http_logo.png';
  static const String logoInContact = 'image/vk_logo.png';
  static const String logoInstagram = 'image/instagram_logo.png';
  static const String logoTiktok = 'image/tiktok_logo.png';
  static const String logoIrbis = 'image/irbis_logo.png';
  static const String logoIrbisKids = 'image/irbisKids_logo.png';
  static const String logoLitres = 'image/litres_logo.png';
  static const String logoNEB = 'image/neb_logo.png';
  static const String logoNEDB = 'image/nedb_logo.png';
  static const String logoRuStore = 'image/ru_store_logo.png';

//Фоновая картинка
  static const String bgImage = 'image/main_background.jpg';
  static const String logoImg = 'image/LIB_logotype.png';
  static const String bgImgAfisha = 'image/bgImgAfishaWeekendsWinter2.jpg';
  static const String bgImgAfisha01 = 'image/bgImgAfishaWeekendsWinter4.jpg';
  static const String bgImgAfisha02 = 'image/bgImgAfishaWeekendsWinter5.jpg';
  static const String bgImgAfisha03 = 'image/bgImgAfishaWeekendsWinter6.jpg';
  static const String bgImgAfishaWeekends =
      'image/bgImgAfishaWeekendsWinter3.jpg';
  static const String bgImgAfishaWeekendsW =
      'image/bgImgAfishaWeekendsWinter.jpg';
  static const String logoAppBar = 'image/logo_app_bar.png';
//Маршруты роутинга(переходов)
  static const String routeMainMenu = '/';
  static const String routeEmpty = 'empty';
  //afisha
  static const String routeAfisha01 = '/afisha';
  static const String routeAfisha02 = '/afisha_second';
  static const String routeAfisha03 = '/afisha_third';
  static const String routeAfisha03a = '/afisha_thirda';
  static const String routeAfishaW01 = '/afisha_saturday';
  static const String routeAfishaW02 = '/afisha_sunday';
  static const String routeAfishaW01a = '/afisha_saturdaya';
  static const String routeAfishaW02a = '/afisha_sundaya';
  static const String routeAfishaW03a = '/afisha_sundaya1';

  //electronic librarys
  static const String routeElLibs = '/main_el_lib';
  static const String routeElLibLitres = '/main_el_litres';
  static const String routeElLibNEB = '/main_el_NEB';
  static const String routeElLibNEDB = '/main_el_NEDB';

  //rules for readers
  static const String routeRules4Readers = '/rules_for_readers';
  static const String routeRulesForReadersHtml = '/rules_for_readers_html';

  //library in Newtwork
  static const String routeLibInNetwork = '/lib_in_network';
  //на страницу qr кодов
  static const String routeLib = '/lib_qr';
  static const String routeInContact = '/inContact_qr';
  static const String routeInstagram = '/instagram_qr';
  static const String routeTikTok = '/tikTok_qr';
  static const String routeRuStore = '/ru_store_qr';

  //structure library
  static const String routeLibiraryStructure = '/library_structure';
  static const String routeLibiraryStructureA = '/library_structure_a';
  static const String routeLibiraryStructureB = '/library_structure_b';

  //ecatalog
  static const String routeECatalogMenu = '/e_catalog_menu';
  static const String routeECatalog = '/e_catalog';
  static const String routeECatalogA = '/e_catalog_a';
  static const String routeECatalogKids = '/e_catalog_kids';
  static const String routeECatalogHtml = '/e_catalog_html';
  static const String routeECatalogHtmlK = '/e_catalog_html_k';

  static const String urlECatalog =
      'http://irbis.db74.ru:8080/cgi-bin/irbis64r_15/cgiirbis_64.exe?Z21ID=&I21DBN=IBIS&P21DBN=IBIS&C21COM=F&LNG=&S21YEAR=2021';
  static const String urlECatalogKids = 'http://irbis.db74.ru:8080/index.php';
  static const String urlRules = 'http://db74.ru/chitatelyam/docs/rules/';

  //books collection
  static const String routeBookCollectionMenu = '/book_collection_menu';
  static const String routeBookCollectionTravels = '/book_collection_travels';
  static const String routeBookCollectionTravelsA = '/book_collection_travelsA';
  static const String routeBookCollectionTravelsB = '/book_collection_travelsB';
  static const String routeBookCollectionRussia = '/book_collection_russia';
  static const String routeBookCollectionRussiaA = '/book_collection_russia_a';
  static const String routeBookCollectionHistory = '/book_collection_history';
  static const String routeBookCollectionHistoryA =
      '/book_collection_history_a';
  static const String routeBookCollectionGorky = '/book_collection_gorky';
  static const String routeBookCollectionBooks = '/book_collection_books';
  //staff
  static const String routeStaffMenu = '/staff_menu';
  static const String routeStaffAdministration = '/staff_administration';
  static const String routeStaffDepReaders = '/staff_department_readers';
  static const String routeStaffDepInfo = '/staff_department_info';
  static const String routeStaffDepCoordination =
      '/staff_department_coordination';
  static const String routeStaffDepFond = '/staff_department_fond';
  static const String routeStaffDepRedaction = '/staff_department_redaction';
  static const String routeStaffDepSecInfo = '/staff_sector_information';
  static const String routeStaffDepInformation =
      '/staff_department_information';

  //admin
  static const String routeLoginPage = '/login_page';
  static const String routeSheduleOfEvents = '/shedule_of_events';

// Пока не используется не получается развернуть через спред оператор.
  /*
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
      */
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

class BooksCollectionData {
  //image
  //gorky
  static String imgGorky = 'image/booksCollections/gorky/gorky001.jpg';
  static String imgGorkyBooks = 'image/booksCollections/gorky/books.jpg';
  static String img1903 = 'image/booksCollections/gorky/1903.jpg';
  static String img1903Full = 'image/booksCollections/gorky/1903_full.jpg';
  static String imgChildhold = 'image/booksCollections/gorky/childhold.jpg';
  static String imgChildholdFull =
      'image/booksCollections/gorky/childhold_full.jpg';
  static String imgStoryes = 'image/booksCollections/gorky/storyes.jpg';
  static String imgStoryesFull =
      'image/booksCollections/gorky/storyes_full.jpg';
  static String imgMother = 'image/booksCollections/gorky/mother.jpg';
  static String imgMotherFull = 'image/booksCollections/gorky/mother_full.jpg';
  static String imgPeople = 'image/booksCollections/gorky/people.jpg';
  static String imgPeopleFull = 'image/booksCollections/gorky/people_full.jpg';
  static String imgVerse = 'image/booksCollections/gorky/verse.jpg';
  static String imgVerseFull = 'image/booksCollections/gorky/verse_full.jpg';
  static String imgBird = 'image/booksCollections/gorky/bird.jpg';
  static String imgBirdFull = 'image/booksCollections/gorky/bird_full.jpg';
  static String imgDanko = 'image/booksCollections/gorky/danko.jpg';
  static String imgDankoFull = 'image/booksCollections/gorky/danko_full.jpg';
  static String imgChildren = 'image/booksCollections/gorky/children.jpg';
  static String imgChildrenFull =
      'image/booksCollections/gorky/children_full.jpg';
  static String imgOldMan = 'image/booksCollections/gorky/oldMan.jpg';
  static String imgOldManFull = 'image/booksCollections/gorky/oldMan_full.jpg';
  static String img30Tom = 'image/booksCollections/gorky/30Tom.jpg';
  static String img30TomFull = 'image/booksCollections/gorky/30Tom_full.jpg';
  static String img18Tom = 'image/booksCollections/gorky/18Tom.jpg';
  static String img18TomFull = 'image/booksCollections/gorky/18Tom_full.jpg';
  static String img25Tom = 'image/booksCollections/gorky/25Tom.jpg';
  static String img25TomFull = 'image/booksCollections/gorky/25Tom_full.jpg';
  static String imgZhzlG = 'image/booksCollections/gorky/zhzlG.jpg';
  static String imgZhzlGFull = 'image/booksCollections/gorky/zhzlG_full.jpg';
  static String imgBikov = 'image/booksCollections/gorky/bikov.jpg';
  static String imgBikovFull = 'image/booksCollections/gorky/bikov_full.jpg';

  static String logoBooksCollectionG = 'image/booksCollections/logo_gorky.jpg';
  static String logoBooksCollection =
      'image/booksCollections/logo_collection.png';
  static String imgGoncharovRecords =
      'image/booksCollections/goncharov_records.jpg';
  static String imgGoncharovFregat =
      'image/booksCollections/goncharov_fregat.jpg';
  static String imgKrasheninnikov = 'image/booksCollections/krasheninnikov.jpg';
  static String imgCibkov = 'image/booksCollections/cibkov.jpg';
  static String imgOldRoom = 'image/booksCollections/old_room.jpg';
  static String imgTransib = 'image/booksCollections/transib.jpg';
  static String imgDay = 'image/booksCollections/day.jpg';
  static String imgScena = 'image/booksCollections/in_scene.jpg';
  static String imgKonops = 'image/booksCollections/konops.jpg';
  static String imgSerkova = 'image/booksCollections/serkova.jpg';

/*   static String goncharovHeader =
      'Гончаров И. А. : Фрегат «Паллада»: путевой дневник кругосветного путешествия,  Издательство: Эксмо; Око, 2014';
  static String goncharovBody =
      'Эта книга – явление в своем роде уникальное. Ни один из классиков русской литературы, ни до ни после Гончарова, не участвовал в подобном путешествии. Два с половиной года, тысячи километров по суше и по морю двигалась ответственная дипломатическая экспедиция через Британию, Мадейру, Атлантику, Южную Африку, Индонезию, Сингапур, Японию, Китай, Филиппины. Через два месяца после возвращения Ивана Александровича появились первые очерки об экспедиции, а через два года вышло в свет первое полное издание «Фрегата “Паллада”», которое выдержало множество переизданий.';
  static String goncharovQuote =
      '«…Пасмурно и ветрено; моросит дождь; ветер сильный. Мы идем по реке Вусуну; она широка, местами с нашу Оку. Ясно видим оба берега, низменные, закрытые плотинами, за плотинами группируются дома, кое-где видны кумирни или вообще здания, имеющие особенное назначение; они выше и наряднее прочих…. Ближе к Шанхаю река заметно оживлялась: беспрестанно встречались джонки. С своими, красно-бурого цвета, парусами, из каких-то древесных волокон и коры….»';
 */
}

class StaffData {
  static const Color headerColor = Color(0xFF6A3025);
  static const String staffLogo = 'image/staff/staff_logo.png';
  static const String staffDirector = 'image/staff/director.jpg';
  static const String staffSamDirector = 'image/staff/sam_dir.jpg';
  static const String staffEmptyMan = 'image/staff/empty_man.jpg';
  static const String staffEmptyWoman = 'image/staff/empty_woman.jpg';
  static const String staffDepReadersArz = 'image/staff/arsamasceva.jpg';
  static const String staffDepReadersBuk = 'image/staff/bukreeva.jpg';
  static const String staffDepReadersZai = 'image/staff/zaikova.jpg';
  static const String staffDepReadersKun = 'image/staff/kunakkildina.jpg';
  static const String staffDepReadersNas = 'image/staff/nasirova.jpg';
  static const String staffDepReadersPro = 'image/staff/prosvirina.jpg';
  static const String staffDepReadersRya = 'image/staff/ryabchenko.jpg';
  static const String staffDepReadersUru = 'image/staff/urusheva.jpg';
  static const String staffDepReadersHiz = 'image/staff/hizhnyak.jpg';
  static const String staffDepReadersAlf = 'image/staff/alferova.jpg';
  static const String staffDepReadersAish = 'image/staff/aisheva.jpg';
  static const String staffDepReadersMel = 'image/staff/melihova.jpg';
  static const String staffDepReadersPer = 'image/staff/perten.jpg';
  static const String staffDepReadersYus = 'image/staff/yusupova.jpg';
  static const String staffDepReadersGri = 'image/staff/grigoreva.jpg';
  static const String staffDepReadersObv = 'image/staff/obvinseva.jpg';

  //Info
  static const String staffDepInfoVin = 'image/staff/vinnik.jpg';
  static const String staffDepInfoCir = 'image/staff/cirazhitdinova.jpg';
  static const String staffDepInfoYaz = 'image/staff/yazenko.jpg';

//Coordination
  static const String staffDepCoorBaz = 'image/staff/bazgutdinova.jpg';
  static const String staffDepCoorRom = 'image/staff/romashkina.jpg';
  static const String staffDepCoorSaf = 'image/staff/safonova.jpg';
  static const String staffDepCoorUda = 'image/staff/udalova.jpg';
//Fond
  static const String staffDepFondGab = 'image/staff/gabitova.jpg';
  static const String staffDepFondGon = 'image/staff/goncharuk.jpg';
  static const String staffDepFondZek = 'image/staff/zekina.jpg';
  static const String staffDepFondKod = 'image/staff/kodinzeva.jpg';
  static const String staffDepFondNik = 'image/staff/nikitenko.jpg';
  static const String staffDepFondPil = 'image/staff/pilnikova.jpg';
  static const String staffDepFondRya = 'image/staff/ryabova.jpg';
  static const String staffDepFondMya = 'image/staff/myasnikova.jpg';

// Staff Sector registration and information
  static const String staffDepSecSus = 'image/staff/empty_woman.jpg';
  static const String staffDepSecMar = 'image/staff/empty_woman.jpg';

//Redaction
  static const String staffDepRedactMat = 'image/staff/matveenkova.jpg';
//Information
  static const String staffDepInformationOne = 'image/staff/onehorned.jpg';
  static const String staffDepInformationTep = 'image/staff/teplov.jpg';

  //Departments
  static const String departmentReaders = 'ОТДЕЛ ПО РАБОТЕ С ЧИТАТЕЛЯМИ';
  static const String departmentInfo = 'ИНФОРМАЦИОННО-БИБЛИОГРАФИЧЕСКИЙ ОТДЕЛ';
  static const String departmentCoordinations =
      'КООРДИНАЦИОННО-МЕТОДИЧЕСКИЙ ОТДЕЛ';
  static const String departmentFond = 'ОТДЕЛ ФОРМИРОВАНИЯ И ОРГАНИЗАЦИИ ФОНДА';
  static const String departmentRedaction = 'РЕДАКЦИОННО-ИЗДАТЕЛЬСКИЙ ОТДЕЛ';
  static const String departmentInformation =
      'ОТДЕЛ АВТОМАТИЗАЦИИ БИБЛИОТЕЧНЫХ ТЕХНОЛОГИЙ';
  static const String departmentAdministration = 'АДМИНИСТРАЦИЯ';

  //Sector registration and information
  static const String departmentSecRegAndInfo =
      'СЕКТОР РЕГИСТРАЦИИ И ИНФОРМАЦИИ';
}
