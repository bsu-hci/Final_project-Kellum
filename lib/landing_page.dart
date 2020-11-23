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

  Widget projectContainer(ProjectCard card) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectPage(project: card.project)));
      },
      onHover: (value) {
      },
      child: card,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Project> projectList = [
      new Project(_url,'its a smiley face','hello1'),
      new Project(_url,'its a smiley face','hello2'),
      new Project(_url,'its a smiley face','hello3'),
      new Project(_url,'its a smiley face','hello4'),
      new Project(_url,'its a smiley face','hello5'),
      new Project(_url,'its a smiley face','hello6'),
      new Project(_url,'its a smiley face','hello7'),
      new Project(_url,'its a smiley face','hello8'),
    ];
    List<ProjectCard> projectCards = [];

    projectList.forEach(
        (project) => projectCards.insert(0, new ProjectCard(project: project, show: "face")));
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: List.generate(projectCards.length,
            (index) => projectContainer(projectCards[index])));
  }
}
