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
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Orgánicos',
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Inorgánico',
    ),
  ];
  
}




