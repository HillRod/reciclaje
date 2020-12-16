class Category {
  Category({
    this.title = '',
    this.imagePath = '',
  });

  String title;
  String imagePath;

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Información',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Clasificación',
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Directorio',
    ),
  ];

  static List<Category> clasificacion = <Category>[
    Category(
      imagePath: 'assets/design_course/organico.png',
      title: 'Orgánicos',
    ),
    Category(
      imagePath: 'assets/design_course/inorganico.png',
      title: 'Inorgánicos',
    ),
  ];

  static List<Category> organicos = <Category>[
    Category(
      imagePath: 'assets/design_course/1_01.png',
      title: 'Residuos alimenticios',
    ),
    Category(
      imagePath: 'assets/design_course/1_02.png',
      title: 'Papel y cartón\n',
    ),
    Category(
      imagePath: 'assets/design_course/1_03.png',
      title: 'Residuos de jardinería',
    ),
    Category(
      imagePath: 'assets/design_course/1_04.png',
      title: 'Madera\n',
    ),
  ];

  static List<Category> inorganicos = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Orgánicos',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Inorgánicos',
    ),
  ];

  static List<Category> directorioportipo = <Category>[
    Category(
      imagePath: 'assets/design_course/centros_01.png',
      title: 'Plásticos',
    ),
    Category(
      imagePath: 'assets/design_course/centros_02.png',
      title: 'Metales',
    ),
    Category(
      imagePath: 'assets/design_course/centros_03.png',
      title: 'Medicamentos',
    ),
    Category(
      imagePath: 'assets/design_course/centros_04.png',
      title: 'Vidrio',
    ),
    Category(
      imagePath: 'assets/design_course/centros_05.png',
      title: 'Orgánicos',
    ),
    Category(
      imagePath: 'assets/design_course/centros_06.png',
      title: 'Papel y Cartón',
    ),
    Category(
      imagePath: 'assets/design_course/centros_07.png',
      title: 'Aceite usado',
    ),
    Category(
      imagePath: 'assets/design_course/centros_08.png',
      title: 'Electrónicos',
    ),
  ];

  static List<Category> directorioLugares = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Lugar',
    ),
  ];
}
