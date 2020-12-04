import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JudgingPanel extends StatefulWidget{

  @override
  _JudgingPanel createState() => _JudgingPanel();

}


class _JudgingPanel extends State<JudgingPanel> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _quantitativeJudging(),
        _qualitativeJudging(),
      ],
    ));
  }

  Widget _quantitativeJudging() {
    return Expanded(
      child: Column(
        children: [
          Slider(
            min: 0,
            max: 5,
            value: _value,
            onChanged: (double value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Slider(
            min: 0,
            max: 5,
            value: _value,
            onChanged: (double value) {
              _value = value;
            },
          ),
          Slider(
            min: 0,
            max: 5,
            value: _value,
            onChanged: (double value) {
              _value = value;
            },
          )
        ],
      ),
    );
  }

  Widget _qualitativeJudging() {
    return Expanded(
      child: Column(
        children: [
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
