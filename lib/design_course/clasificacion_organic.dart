import '../main.dart';
import 'clasificacion_organic_list.dart' as list;
import 'package:flutter/material.dart';
import 'design_course_app_theme.dart';

class OrganicGridScreen extends StatefulWidget {
  @override
  _OrganicGridScreenState createState() => _OrganicGridScreenState();
}

class _OrganicGridScreenState extends State<OrganicGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            //getCategoryUI(),
            Flexible(
              child: getPopularCourseUI(),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                //padding: const EdgeInsets.all(8.0),
                height: 30,
                decoration: BoxDecoration(
                  color: HexColor('#AB1C0E'),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: HexColor('#AB1C0E').withOpacity(0.5),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿Cómo desecharlos?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 0.0,
                        color: DesignCourseAppTheme.nearlyWhite,
                      ),
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Residuos orgánicos',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
          Flexible(
            child: list.OrganicListView(),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Clasificación de residuos domiciliaros',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: Image.asset('assets/design_course/userImage.png'),
          )
        ],
      ),
    );
  }
}
