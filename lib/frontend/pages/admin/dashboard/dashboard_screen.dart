/*import 'components/header.dart';
import 'components/my_fields.dart';
import 'components/recent_files.dart';
import 'package:flutter/material.dart';
import 'components/storage_details.dart';
import 'package:snel_plus_2/plateform.dart';
import 'package:snel_plus_2/frontend/components/colors/colors.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Plateform.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Plateform.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Plateform.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!Plateform.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

*/