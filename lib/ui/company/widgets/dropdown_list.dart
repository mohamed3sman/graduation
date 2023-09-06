import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';

class TawseelDropDownList extends StatefulWidget {
  const TawseelDropDownList({super.key});

  @override
  State<TawseelDropDownList> createState() => _TawseelDropDownListState();
}

class _TawseelDropDownListState extends State<TawseelDropDownList> {
  String currentValue = '+20';
  // String currentCountry = 'EG';
  List<String> countriesList = <String>['EG', 'US', 'SA', 'SY']; // should be replaced with images
  // String countriesList = 'EG';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        margin: const EdgeInsets.only(top: kMargin12),
        padding: const EdgeInsets.symmetric(horizontal: kPadding8),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(kBorderRadius6), border: Border.all(width: 1, color: TColors.handle)),
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(kBorderRadius6),
          value: currentValue,
          icon: FittedBox(
            child: Row(
              children: [
                const SizedBox(
                  width: 2.0,
                ),
                Text(countriesList.elementAt(0)),
                const Icon(Icons.arrow_drop_down_rounded)
              ],
            ),
          ),
          items: <String>['+20', '+15', '+1', '+99'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          underline: const SizedBox(),
          onChanged: (value) {
            setState(() {
              if (value != null) {
                currentValue = value;
              }
            });
          },
        ),
      ),
    );
  }
}
