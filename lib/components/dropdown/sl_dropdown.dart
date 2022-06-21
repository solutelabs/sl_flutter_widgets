import 'package:flutter/material.dart';

class SLDropDown extends StatelessWidget {
  final double width;
  final String selectedDropDownValue;
  final List<String> dropDownListValues;
  final Function? onChanged;
  final Color borderColor;
  final Color arrowColor;
  final Color? color;
  final TextStyle? style;

  const SLDropDown(
      {Key? key,
      required this.width,
      required this.selectedDropDownValue,
      required this.dropDownListValues,
      required this.borderColor,
      required this.arrowColor,
      this.color,
      this.style,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: DropdownButton<String>(
        style: style,
        isExpanded: true,
        underline: const SizedBox(),
        value: selectedDropDownValue,
        items: dropDownListValues.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              textScaleFactor: 1,
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          onChanged!(newValue);
        },
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: arrowColor,
        ),
      ),
    );
  }
}
