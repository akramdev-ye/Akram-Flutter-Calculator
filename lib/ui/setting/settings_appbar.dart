import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:akramcalculator/ui/setting/widgets/about_app.dart';
import 'package:akramcalculator/ui/widgets/custom_icon_button.dart';
import 'package:akramcalculator/utils/utilities.dart';

class SettingsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomIconButton(
              icon: LineAwesomeIcons.arrow_left,
              size: 25.0,
              onPressed: () => Navigator.pop(context),
            ),
            Text('Choose Your Color', style: appBarStyle(context)),
            CustomIconButton(
              icon: LineAwesomeIcons.info_circle,
              size: 25.0,
              onPressed: () => _buildAlertDialog(context),
            ),
          ],
        ),
      ],
    );
  }
  
  _buildAlertDialog(BuildContext context) {
     showDialog(context: context, builder: (_) => AboutApp());
  }
}
