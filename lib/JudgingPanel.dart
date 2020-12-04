import 'dart:html';

import 'package:final_project/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JudgingPanel extends StatefulWidget{
  Project project;
  JudgingPanel(this.project);

  @override
  _JudgingPanel createState() => _JudgingPanel(this.project);

}


class _JudgingPanel extends State<JudgingPanel> {
  double _value = 0.0;
  double _value1 = 0.0;
  double _value2 = 0.0;
  Project project;

  _JudgingPanel(this.project);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: ListView(
      children: [
        _quantitativeJudging(),
        _qualitativeJudging(),
        RaisedButton(
          child: Text('submit'),
          onPressed: () {
            setState(() {
              project.judged = true;
            });
          },

        )
      ],
    ));
  }

  Widget _quantitativeJudging() {
    return Expanded(
      child: Column(
        children: [
        Text('valuable information'),
          Slider(
            min: 0,
            max: 5,
            label: 'valuable information',
            value: _value,
            onChanged: (double value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Text('more valuable information'),
          Slider(
            min: 0,
            max: 5,
            label: 'more valuable information',
            value: _value1,
            onChanged: (double value) {
              _value = value;
            },
          ),
          Text('the most valued information'),
          Slider(
            min: 0,
            max: 5,
            label: 'the most valued information',
            value: _value2,
            onChanged: (double value) {
              _value = value;
            },
          ),
        ],
      ),
    );
  }

  Widget _qualitativeJudging() {
    return Expanded(
      child: Column(
        children: [
          Text('short comment on project'),
          TextField(),
          Text('Short comment to project creator'),
          TextField(),
        ],
      ),
    );
  }
}
