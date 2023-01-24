import 'package:flutter/material.dart';

///dropdown class
class SLDropDown extends StatelessWidget {
  ///initilize the dropdown
  const SLDropDown(
      {required this.width,
      required this.selectedDropDownValue,
      required this.dropDownListValues,
      required this.borderColor,
      required this.arrowColor,
      Key? key,
      this.color,
      this.style,
      this.onChanged})
      : super(key: key);

      ///widget of the [SlDropDown]
  final double width;
  ///selected value of the [SlDropDown]
  final String selectedDropDownValue;
  ///list of the [SlDropDown] value
  final List<String> dropDownListValues;
  ///provide callaback when value changed
  final Function? onChanged;
  ///border color of the [SlDropDown]
  final Color borderColor;
  ///arrow color of the [SlDropDown]
  final Color arrowColor;
  ///color of the [SlDropDown]
  final Color? color;
  ///[TextStyle] for the [SlDropDown]
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
          items: dropDownListValues
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          textScaleFactor: 1,
                        ),
                      ))
              .toList(),
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
