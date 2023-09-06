import 'package:flutter/material.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class Reason extends StatefulWidget {
  const Reason({super.key});

  @override
  State<Reason> createState() => _ReasonState();
}

class _ReasonState extends State<Reason> {
  @override
  Widget build(BuildContext context) {
    String? Reasons;

    return TawseelScaffold(
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("سبب الإلغاء"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TawseelContainer(
            child: RadioListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("العميل رفض الطلب")],
              ),
              value: "adress 2",
              groupValue: Reasons,
              onChanged: (value) {
                setState(() {
                  Reasons = value.toString();
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TawseelContainer(
            child: RadioListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("الطلب تالف")],
              ),
              value: "adress 2",
              groupValue: Reasons,
              onChanged: (value) {
                setState(() {
                  Reasons = value.toString();
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RadioListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("سبب اخر")],
            ),
            value: "adress 2",
            groupValue: Reasons,
            onChanged: (value) {
              setState(() {
                Reasons = value.toString();
              });
            },
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TawseelFilledButton(
              text: "ارسال",
            ),
          )
        ],
      ),
    );
  }
}
