import 'package:final_project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage{

  List<Project> projectList = [];

  Widget landingPage(){
    return GridView.builder(
      itemCount: projectList.length,
      itemBuilder: (BuildContext context, int index) {
        return projectContainer(projectList[index]);
      },
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 3, mainAxisSpacing: 5, crossAxisSpacing: 5,
      ),
    );
  }

  Widget projectContainer(project) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.network(project.thumbnailImg)
    );
  }

}