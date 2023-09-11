import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class Reason extends StatefulWidget {
  const Reason({super.key});

  @override
  State<Reason> createState() => _ReasonState();
}

List<String> reasons = [
  "العميل رفض الطلب",
  "الطلب تالف",
  "سبب اخر",
];

class _ReasonState extends State<Reason> {
  String currentOption = reasons[0];

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "سبب الإلغاء",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TawseelContainer(
              child: ListTile(
                title: const Text("العميل رفض الطلب"),
                leading: Radio(
                  activeColor: primaryColor,
                  value: reasons[0],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TawseelContainer(
              child: ListTile(
                title: const Text("الطلب تالف"),
                leading: Radio(
                  activeColor: primaryColor,
                  value: reasons[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TawseelContainer(
              child: ListTile(
                title: const Text("سبب اخر"),
                leading: Radio(
                  activeColor: primaryColor,
                  value: reasons[2],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TawseelTextField(
                hintText: "اترك السبب هنا ",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TawseelFilledButton(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: primaryColor,
                    content: Text(
                      "تم إلغاء الطلب",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ));
                },
                text: "ارسال",
              ),
            )
          ],
        ),
      ),
    );
  }
}
//ahmed alaa