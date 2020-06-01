import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_exapmle/widgets/call_to_action/callToAction.dart';
import 'package:web_exapmle/widgets/centerd_view/centeredView.dart';
import 'package:web_exapmle/widgets/course_details/courseDetails.dart';
import 'package:web_exapmle/widgets/navigation_bar/navigationBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(children: [
                CourseDetail(),
                Expanded(
                  child: Center(
                    child: InkWell(
                      child: CallToAction('Join Course'),
                      onTap: () => launch('https://github.com/dannyp99')
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}