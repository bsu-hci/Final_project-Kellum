import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JudgingPanel extends StatelessWidget {
  double _value = 0;

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
