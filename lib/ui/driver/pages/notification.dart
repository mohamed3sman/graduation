import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TawseelScaffold(
      title: Text("الاشعارات"),
      leading: TawseelBackButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TawseelNotificationTile(
              icon: Icons.check,
              title: "تم تسليم الطلب رقم #45224",
              subTitle: "اليوم - 02:02 مساءا",
              iconcolor: TColors.success,
            ),
            SizedBox(height: kPadding16),
            TawseelNotificationTile(
              icon: Icons.access_alarm,
              title: "تذكير : يرجي تسليم الاستحاق الاخير",
              subTitle: "اليوم - 02:02 مساءا",
              iconcolor: TColors.main,
            ),
            SizedBox(height: kPadding16),
            TawseelNotificationTile(
              icon: Icons.clear,
              title: "تم رفض الطلب من قبل العميل",
              subTitle: "اليوم - 02:02 مساءا",
              iconcolor: TColors.error,
            ),
            SizedBox(height: kPadding16),
            TawseelNotificationTile(
              icon: Icons.check,
              title: "تم تسليم الطلب رقم #45227",
              subTitle: "اليوم - 02:02 مساءا",
              iconcolor: TColors.success,
            ),
            SizedBox(height: kPadding16),
            TawseelNotificationTile(
              icon: Icons.hourglass_bottom_outlined,
              title: "الطلب رقم #51172 قيد التوصيل",
              subTitle: "اليوم - 02:02 مساءا",
              iconcolor: TColors.main,
            ),
            SizedBox(height: kPadding16),
          ],
        ),
      ),
    );
  }
}

class TawseelNotificationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Color iconcolor;
  const TawseelNotificationTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return TawseelContainer(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kPadding12),
        minLeadingWidth: 50,
        leading: CircleAvatar(
          backgroundColor: iconcolor,
          child: Icon(
            icon,
            color: TColors.whiteText,
          ),
        ),
        title: Text(
          title,
          style: TText.displayMedium,
        ),
        subtitle: Text(
          subTitle,
          style: TText.displaySmall,
        ),
      ),
    );
  }
}
