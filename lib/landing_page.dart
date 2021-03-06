import 'package:final_project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  bool isJudging = false;
  bool responded = false;
  String _url =
      'https://img.pngio.com/happy-smile-png-smiley-face-icon-png-transparent-png-480x480-transparent-happy-face-820_560.png';

  Widget projectContainer(ProjectCard card) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectPage(project: card.project, isJudging: isJudging,)));
      },
      onHover: (value) {
      },
      child: card,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Project> projectList = [
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello1'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello2'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello3'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello4'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello5'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello6'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello7'),
      new Project(thumbnailImg: _url, description: 'its a smiley face', title: 'hello8'),
    ];
    List<Widget> projectCards = [];

    projectList.forEach(
        (project) => projectCards.insert(0, new ProjectCard(project: project, show: "face")));

    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: List.generate(projectCards.length+1,
            (index) {
          if (index == projectCards.length && !responded){
            return askForJudging();
          }else if(index == projectCards.length && responded) {
            return thanksForResponding();
          }
          return projectContainer(projectCards[index]);
        }));
  }

  Widget askForJudging() {
    return GridTile(
      child: Column(
        children:[
          Text('want to be a judge?'),
          Row(
            children:[
              RaisedButton(
                child: Text('yes'),
                onPressed: () {
                  setState(() {
                    isJudging = true;
                    responded = true;
                  });
                },
              ),
              RaisedButton(
                child: Text('No'),
                onPressed: (){
                  setState(() {
                    responded = true;
                  });
                },
              )
            ]
          )
        ]
      ),
    );
  }

  Widget thanksForResponding() {
    return GridTile(
      child: Center(
        child: Text('thank you for your response'),
      ),
    );
  }
}
