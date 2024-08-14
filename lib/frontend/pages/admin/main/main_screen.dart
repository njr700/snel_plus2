import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snel_plus_2/plateform.dart';
import 'package:snel_plus_2/frontend/controllers/MenuAppController.dart';
//import 'package:snel_plus_2/frontend/pages/admin/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Plateform.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            //Expanded(
              // It takes 5/6 part of the screen
              //flex: 5,
              //child: DashboardScreen(),
            //),
          ],
        ),
      ),
    );
  }
}
