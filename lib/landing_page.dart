import 'package:final_project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage{

  String _url = 'https://img.pngio.com/happy-smile-png-smiley-face-icon-png-transparent-png-480x480-transparent-happy-face-820_560.png';

  Widget landingPage(){
    List<Project> projectList = [
      new Project(_url, 'hello'),new Project(_url, 'hello'),
      new Project(_url, 'hello'),new Project(_url, 'hello'),
      new Project(_url, 'hello'),new Project(_url, 'hello'),
      new Project(_url, 'hello'),new Project(_url, 'hello'),
    ];
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(projectList.length, (index) => projectContainer(projectList[index]))
    );
  }

  Widget projectContainer(Project project) {
    return Center(
      child: decideChild(project),
    );
  }

  Widget decideChild(Project project) {
    if(project.thumbnailImg == null){
      return Icon(Icons.thumb_down_alt);
    }
    return Tooltip(
      child: Image.network(project.thumbnailImg),
      message: project.description,
      preferBelow: true,
      showDuration: Duration(milliseconds: 500),
    );
  }

}