import 'package:flutter/material.dart';

///SlDropdown is easy to use dropdown widget that we can use in project
class SLDropDown extends StatelessWidget {
  ///
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

  ///width of the dropdown
  final double width;

  /// selected dropdown value
  final String selectedDropDownValue;

  /// List of the dropdown values
  final List<String> dropDownListValues;

  ///onchageed callback function recieve callback whne value selected
  final Function? onChanged;

  ///broder color of the dropdown
  final Color borderColor;

  /// arrow color of the dropdown
  final Color arrowColor;

  ///border color of dropdown

  final Color? color;

  /// textstyle of the heading in dropdown
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
