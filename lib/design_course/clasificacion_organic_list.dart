import 'package:best_flutter_ui_templates/design_course/design_course_app_theme.dart';
import 'package:best_flutter_ui_templates/design_course/models/category.dart';
import 'clasificacion_1.dart' as vista2;
import 'directorio.dart' as vista3;
import 'informacion.dart' as vista1;
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';

class OrganicListView extends StatefulWidget {
  const OrganicListView({Key key, this.callBack}) : super(key: key);

  final Function callBack;
  @override
  _OrganicListViewState createState() => _OrganicListViewState();
}

class _OrganicListViewState extends State<OrganicListView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return GridView(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: List<Widget>.generate(
                Category.organicos.length,
                (int index) {
                  final int count = Category.organicos.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                      parent: animationController,
                      curve: Interval((1 / count) * index, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  );
                  animationController.forward();
                  return CategoryView(
                    callback: () {
                      widget.callBack();
                    },
                    category: Category.organicos[index],
                    animation: animation,
                    animationController: animationController,
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 32.0,
                crossAxisSpacing: 32.0,
                childAspectRatio: 3.3 / 2, //Cambiar
              ),
            );
          }
        },
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView(
      {Key key,
      this.category,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback callback;
  final Category category;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
              transform: Matrix4.translationValues(
                  100 * (1.0 - animation.value), 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  moveTo(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('#D9D9D9'),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  category.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.darkerText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0)),
                                child: AspectRatio(
                                    aspectRatio: 2,
                                    child: Image.asset(category.imagePath)),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }

  void moveTo(context) {
    if (category.title == "Información") {
      Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) =>
              vista1.InformationCourseHomeScreen(),
        ),
      );
    }
    if (category.title == "Clasificación") {
      Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => vista2.ClasificationHomeScreen(),
        ),
      );
    }
    if (category.title == "Directorio") {
      Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => vista3.DirectoryCourseHomeScreen(),
        ),
      );
    }
  }
}
