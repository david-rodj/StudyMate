import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // CreateAssignment
  {
    'h5supahn': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'f2wk8b9w': {
      'es': 'Descripción',
      'en': 'Description',
    },
    'u4gx8q5c': {
      'es': 'Dificultad',
      'en': 'Dificulty',
    },
    'grce9lff': {
      'es': 'Tipo',
      'en': 'Type',
    },
    'xh52n9hi': {
      'es': 'Tarea',
      'en': 'Task',
    },
    '0g5jnsjo': {
      'es': 'Tarea',
      'en': 'Task',
    },
    '251yzaij': {
      'es': 'Examen',
      'en': 'Exam',
    },
    'j0txutzt': {
      'es': 'Proyecto',
      'en': 'Project',
    },
    '9osouxod': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'n4nz6tfc': {
      'es': 'Buscar',
      'en': 'Search',
    },
    '3fpd3wqs': {
      'es': 'Fecha Programada',
      'en': 'Deadline',
    },
    'xkfvosje': {
      'es': 'Selecciona una fecha',
      'en': 'Select a Date',
    },
    'dv7z6apv': {
      'es': 'Crear',
      'en': 'Create',
    },
    'n3w8dhcb': {
      'es': 'Escribe un nombre',
      'en': '',
    },
    'y5veavtq': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '25ae7iia': {
      'es': 'Escribe una descripcion',
      'en': '',
    },
    'mhhaozko': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'bqrighrd': {
      'es': 'Crear Asignación',
      'en': 'Create Assignment',
    },
    'eofhnmb6': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // HomePage
  {
    'ynrnugy4': {
      'es': 'Asignaciones',
      'en': 'Assignments',
    },
    'vp7cx88s': {
      'es': 'Todas',
      'en': 'All',
    },
    'j7vbzhnj': {
      'es': 'Listado de asignaciones',
      'en': 'Assignments list',
    },
    'pjni6343': {
      'es': 'Completadas',
      'en': 'Completed',
    },
    'jnqiisfc': {
      'es': 'Asignaciones completadas',
      'en': 'Completed Assignments',
    },
    'j2pd37de': {
      'es': 'Pendientes',
      'en': 'Pending',
    },
    'o93r3k9h': {
      'es': 'Asignaciones pendientes',
      'en': 'Pending Assignments',
    },
    'r11kkztz': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // CreateSubject
  {
    'e40cqbd4': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'hbhwwela': {
      'es': 'Color',
      'en': 'Color',
    },
    'djy9vqko': {
      'es': 'Selecciona un color',
      'en': 'Select a color',
    },
    'iqgsmbiw': {
      'es': 'Crear',
      'en': 'Create',
    },
    '4ki1w63z': {
      'es': 'Escribe un nombre',
      'en': '',
    },
    'yjomtkc6': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ibsxe7zd': {
      'es': 'Crear Materia',
      'en': 'Create Subject',
    },
    '9pzwbwi7': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Create
  {
    '8j9vc071': {
      'es': 'Materias',
      'en': 'Subjects',
    },
    'tstk54ik': {
      'es': 'Crear',
      'en': 'Create',
    },
    '0p3906z7': {
      'es': 'Listado de materias',
      'en': 'Assignments list',
    },
    '0akmww3p': {
      'es': '',
      'en': '',
    },
  },
  // SubjectInfo
  {
    'lp6c3b5b': {
      'es': 'Materia',
      'en': 'Assignments',
    },
    '0sn16g7k': {
      'es': 'Color',
      'en': 'Color',
    },
    'zy5z74lq': {
      'es': 'Asignaciones',
      'en': 'Assignments list',
    },
    'prr0nwmd': {
      'es': 'Crear',
      'en': 'Create',
    },
    'xzu9evob': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // AssignmentInfo
  {
    'ufzrelwc': {
      'es': 'Asignación',
      'en': 'Assignments',
    },
    'nl1epe6b': {
      'es': 'Tipo',
      'en': 'Type',
    },
    'ry3dnzlj': {
      'es': 'Hello World',
      'en': '',
    },
    'm9jvxqx5': {
      'es': 'Descripción',
      'en': 'Description',
    },
    'hb8k9e5d': {
      'es': 'Hello World ',
      'en': '',
    },
    '5p67fdhs': {
      'es': 'Materia',
      'en': 'Subject',
    },
    '7ufhs946': {
      'es': 'Hello World',
      'en': '',
    },
    '5gddsmca': {
      'es': 'Por Completar',
      'en': 'Pending',
    },
    'm4o63vmx': {
      'es': 'Dificultad',
      'en': 'Dificulty',
    },
    'cdmm5obb': {
      'es': 'n',
      'en': '',
    },
    'rgq0lodl': {
      'es': 'Fecha Programada',
      'en': 'Deadline',
    },
    'jwm7qpsp': {
      'es': 'Hello World',
      'en': '',
    },
    'xayztcei': {
      'es': '',
      'en': '',
    },
  },
  // EditSubject
  {
    '99jxvyrq': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'e12l90zy': {
      'es': 'Color',
      'en': 'Color',
    },
    'rg7sx2vk': {
      'es': 'Selecciona un color',
      'en': 'Select a color',
    },
    'aef8xehi': {
      'es': 'Actualizar',
      'en': 'Update',
    },
    'nbnw1pcr': {
      'es': 'Escribe un nombre',
      'en': '',
    },
    'tpyrn1m1': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6aiqqcb8': {
      'es': 'Editar Materia',
      'en': 'Edit Subject',
    },
    'hil99nyv': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // EditAssingment
  {
    '9own8u7p': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'k2jerh2h': {
      'es': 'Descripción',
      'en': 'Description',
    },
    'b2cv3mho': {
      'es': 'Dificultad',
      'en': 'Dificulty',
    },
    'fxqi4z59': {
      'es': 'Tipo',
      'en': 'Type',
    },
    'xrbvptvl': {
      'es': 'Tarea',
      'en': 'Task',
    },
    'nrg7zmmw': {
      'es': 'Tarea',
      'en': 'Task',
    },
    'gkjpoo38': {
      'es': 'Examen',
      'en': 'Exam',
    },
    'gtr00kqx': {
      'es': 'Proyecto',
      'en': 'Project',
    },
    '610aet5p': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    '6qsgziav': {
      'es': 'Buscar',
      'en': 'Search',
    },
    'gnld9wsc': {
      'es': 'Fecha Programada',
      'en': 'Deadline',
    },
    '66hqxjfs': {
      'es': 'Selecciona una fecha',
      'en': 'Select a date',
    },
    '76c9um23': {
      'es': 'Actualizar',
      'en': 'Update',
    },
    '22n0fulb': {
      'es': 'Escriba un nombre',
      'en': '',
    },
    'qfj422qn': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'r71j5kc5': {
      'es': 'Field is required',
      'en': '',
    },
    'hqgo55vx': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xx05icc0': {
      'es': 'Editar Asignación',
      'en': 'Edit Assignment',
    },
    'o0wqx4wv': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Settings
  {
    'enaz2stc': {
      'es': 'Configuración',
      'en': 'Settings',
    },
    '686lmmj5': {
      'es': 'Tema',
      'en': 'Theme',
    },
    'mtcuzy7i': {
      'es': 'Modo claro',
      'en': 'Light Mode',
    },
    'gj3gh3cz': {
      'es': 'Modo oscuro',
      'en': 'Dark Mode',
    },
    'wbz6onqj': {
      'es': 'Idioma',
      'en': 'Language',
    },
    'a9hhopcm': {
      'es': 'Español',
      'en': 'Spanish',
    },
    'u8ffjn7j': {
      'es': 'Ingles',
      'en': 'English',
    },
    'z1cofzi3': {
      'es': 'Recibir Notificaciones',
      'en': 'Receive Notifications',
    },
    'av7zfh4z': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    'sygb82o1': {
      'es': '2 Días antes',
      'en': '2 days before',
    },
    'g31t0czo': {
      'es': '1 Hora antes',
      'en': '1 Hour before',
    },
    '7u59jcxj': {
      'es': '1 Día Antes',
      'en': '1 Day before',
    },
    'x8qkw1la': {
      'es': '2 Días antes',
      'en': '2 Days before',
    },
    'hwnrmcju': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'xvdk0fnq': {
      'es': 'Search',
      'en': 'Search',
    },
    'p2fqcjpe': {
      'es': 'Proyectos',
      'en': 'Projects',
    },
    'ftnmoyyy': {
      'es': '1 Vez a la semana',
      'en': 'Once a week',
    },
    'n6jbde8e': {
      'es': '1 Vez a la semana',
      'en': 'Once a week',
    },
    'ni4a2vtu': {
      'es': '2 Veces a la semana',
      'en': 'Twice a week',
    },
    'rivvsb5k': {
      'es': '4 Veces a la semana',
      'en': '4 Times a week',
    },
    'b24zk5y0': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'mvnsbxux': {
      'es': 'Search',
      'en': 'Search',
    },
    'e8stqart': {
      'es': 'Examenes',
      'en': 'Exams',
    },
    '43n231iv': {
      'es': '1 Vez a la semana',
      'en': 'Once a week',
    },
    'e56wlhap': {
      'es': '1 Vez a la semana',
      'en': 'Once a week',
    },
    'e2i6u80f': {
      'es': '2 Veces a la semana',
      'en': 'Twice a week',
    },
    'fvcowo2l': {
      'es': '4 Veces a la semana',
      'en': '4 Times a week',
    },
    '85cvh0zn': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'zn0pxp5u': {
      'es': 'Search',
      'en': 'Search',
    },
    '9o1ub3g7': {
      'es': '',
      'en': 'Home',
    },
  },
  // Miscellaneous
  {
    'rfv6z1v5': {
      'es':
          'StudyMate desea acceder a tu calendario para sincronizar y gestionar tus tareas y fechas límite de manera eficiente.',
      'en': '',
    },
    '7hs4dir1': {
      'es':
          'StudyMate desea acceder a tus notificaciones para recordarte fechas importantes y próximas asignaciones.',
      'en': '',
    },
    'rnny6963': {
      'es': '',
      'en': '',
    },
    '6dgfs11q': {
      'es': '',
      'en': '',
    },
    '7xdbloex': {
      'es': '',
      'en': '',
    },
    'pqq60lt7': {
      'es': '',
      'en': '',
    },
    'un8qcaam': {
      'es': '',
      'en': '',
    },
    'yif2ps4x': {
      'es': '',
      'en': '',
    },
    'kk1b9sw6': {
      'es': '',
      'en': '',
    },
    'hlp4sifp': {
      'es': '',
      'en': '',
    },
    'qrkmtdgt': {
      'es': '',
      'en': '',
    },
    '1zid6mkx': {
      'es': '',
      'en': '',
    },
    'rkpm4j07': {
      'es': '',
      'en': '',
    },
    'n8gunnxt': {
      'es': '',
      'en': '',
    },
    'aty8odn8': {
      'es': '',
      'en': '',
    },
    'rqbxlm1q': {
      'es': '',
      'en': '',
    },
    'nmbaim8z': {
      'es': '',
      'en': '',
    },
    'ublmfcu7': {
      'es': '',
      'en': '',
    },
    'wr2qzh2x': {
      'es': '',
      'en': '',
    },
    'iv0xpmgr': {
      'es': '',
      'en': '',
    },
    'za600vpv': {
      'es': '',
      'en': '',
    },
    '8why0kxr': {
      'es': '',
      'en': '',
    },
    '2iemgwiu': {
      'es': '',
      'en': '',
    },
    '5edu5lnt': {
      'es': '',
      'en': '',
    },
    '3h3nca1o': {
      'es': '',
      'en': '',
    },
    'b9pozhdr': {
      'es': '',
      'en': '',
    },
    '4uv3o8sy': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
