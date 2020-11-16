
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage{

  var projectList = [];

  Widget landingPage(){
    return GridView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(projectList[index].thumbnailImg);
      },
      gridDelegate: null,

    );
  }

}