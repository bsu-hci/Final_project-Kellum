import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'JudgingPanel.dart';
import 'chat_room.dart';

class Project {
  String thumbnailImg;
  String description;
  String title;

  Project(this.thumbnailImg, this.description, this.title);
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
      appBar: AppBar(
        title: Text(project.title),
        centerTitle: true,
      ),
      body: ProjectLayout(project: project)
    );
  }

}

class ProjectLayout extends StatelessWidget{

  Project project;
  bool isJudging;
  ProjectLayout({@required this.project, this.isJudging=true});

  @override
  Widget build(BuildContext context) {
    Widget layout = _defaultLayout();
    if(isJudging) {
      layout = _judgingLayout();
    }
    return Scaffold(
      body: layout,
    );
  }

  Widget _defaultLayout() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GridTile(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.network(project.thumbnailImg),
              Text(project.description, textAlign: TextAlign.center,),
            ],
          ),
        ),
        ChatRoom(),
      ],
    );
  }

  Widget _judgingLayout() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GridTile(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.network(project.thumbnailImg),
              Text(project.description, textAlign: TextAlign.center,),
            ],
          ),
        ),
        ChatRoom(),
        JudgingPanel(),
      ],
    );
  }
}

