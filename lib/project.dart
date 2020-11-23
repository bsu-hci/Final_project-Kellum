import 'package:flutter/material.dart';

class Project {
  String thumbnailImg;
  String description;

  Project(this.thumbnailImg, this.description);
}

class ProjectCard extends StatelessWidget {
  Image face;
  Widget text;
  String show;
  Project project;

  ProjectCard({@required this.project, @required this.show}){
    this.face = Image.network(this.project.thumbnailImg);
    this.text = Text(this.project.description);
  }

  Widget getShowing() {
    Widget retWidget = face;
    if(show == 'text'){
      retWidget = text;
    }
    return retWidget;
  }

  void switchShowing(){
    if(show == 'text'){
      show = 'face';
    }else{
      show = 'text';
    }
  }

  @override
  Widget build(BuildContext context) {
    return getShowing();
  }

}

class ProjectPage extends StatefulWidget{
  Project project;
  ProjectPage({@required this.project});

  @override
  _ProjectPage createState() => _ProjectPage();
}

class _ProjectPage extends State<ProjectPage>{
  @override
  Widget build(BuildContext context) {
    Project project = widget.project;
    return Scaffold(
      body: Text(project.description),
    );
  }

}
