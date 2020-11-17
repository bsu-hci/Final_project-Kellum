import 'package:final_project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  String _url =
      'https://img.pngio.com/happy-smile-png-smiley-face-icon-png-transparent-png-480x480-transparent-happy-face-820_560.png';

  Widget projectContainer(Project project) {
    return Center(
      child: decideChild(project),
    );
  }

  String show = 'face';

  Widget decideChild(Project project) {
    if (project.thumbnailImg == null) {
      return Icon(Icons.thumb_down_alt);
    }

    Widget txt = Center(
      child: Text(project.description),
    );
    Image img = Image.network(project.thumbnailImg);
    return InkWell(
        onTap: () {
          setState(() {
            show = 'text';
          });
        },
        onHover: (value){
        },
        child: ProjectCard(face: img, text: txt, show: show));
  }

  @override
  Widget build(BuildContext context) {
    List<Project> projectList = [
      new Project(_url, 'hello1'),
      new Project(_url, 'hello2'),
      new Project(_url, 'hello3'),
      new Project(_url, 'hello4'),
      new Project(_url, 'hello5'),
      new Project(_url, 'hello6'),
      new Project(_url, 'hello7'),
      new Project(_url, 'hello8'),
    ];
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: List.generate(projectList.length,
            (index) => projectContainer(projectList[index])));
  }
}
