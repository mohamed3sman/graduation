import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/driver/pages/driver_orders.dart';
import 'package:tawseel/ui/driver/pages/driver_home_page.dart';
import 'package:tawseel/ui/driver/pages/profile_page.dart';
import 'package:tawseel/ui/driver/pages/wallet.dart';

/// only wraps content in an appbar and background with colors
class DriverScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? leading;
  final Widget? title;
  final double? titleSpacing;
  final double? toolbarHeight;
  final double? leadingWidth;
  final List<Widget>? actions;
  final Color? backgroundColor;
  const DriverScaffold(
      {super.key,
      this.body,
      this.leading,
      this.title,
      this.actions,
      this.backgroundColor,
      this.titleSpacing,
      this.toolbarHeight,
      this.leadingWidth});

  @override
  State<DriverScaffold> createState() => _DriverScaffoldState();
}

class _DriverScaffoldState extends State<DriverScaffold> {
  final PageController _pageController = PageController(initialPage: 3);

  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.bg,
      appBar: widget.body == null
          ? null
          : AppBar(
              toolbarHeight: widget.toolbarHeight,
              leadingWidth: widget.leadingWidth ?? kMargin24 * 3,
              titleSpacing: widget.titleSpacing ?? 0.0,
              backgroundColor: TColors.bg,
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding8),
                child: widget.leading,
              ),
              title: widget.title,
              actions: widget.actions != null
                  ? [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widget.actions!,
                      ),
                      const SizedBox(width: kMargin8),
                    ]
                  : null,
            ),
      body: widget.body ??
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _selectedIndex = page;
              });
            },
            children: const [
              DriverProfilePage(),
              WalletPage(),
              DriverOrders(),
              DriverHomePage(),
            ],
          ),
      bottomNavigationBar: widget.body != null
          ? null
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                _pageController.animateToPage(value,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOutQuart);
                _selectedIndex = value;
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              selectedItemColor: TColors.main,
              unselectedItemColor: context.theme.iconTheme.color,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 30),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet, size: 30),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, size: 30),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 30),
                  label: '',
                ),
              ],
            ),
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const KeepAliveWrapper({Key? key, required this.child}) : super(key: key);

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
