import 'package:flutter/material.dart';

class Project {
  String thumbnailImg;
  String description;

  Project(this.thumbnailImg, this.description);
}

class ProjectCard extends StatelessWidget {
  Image face;
  Widget text;
  String show = 'face';

  ProjectCard({@required this.face, @required this.text,this.show});

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
