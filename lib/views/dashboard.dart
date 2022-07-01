import 'package:flutter/material.dart';
import '../components/fatmenu.dart';
import '../containers/footer.dart';
import '../main.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Center(
      child: Align(
        alignment: Alignment.topRight,
        child: Stack(children: [
          SingleChildScrollView(
            primary: false,
            controller: args.scroller,
            child: Column(
              children: const [Footer()],
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: FatMenu(
              isVisible: args.isVisible,
            ),
          )
        ]),
      ),
    );
  }
}
