import 'package:flutter/material.dart';
import 'package:learning_dashboard/constants.dart';
import 'package:learning_dashboard/text_styles.dart';
import 'package:learning_dashboard/ui/screen/dashboard_screen_provider.dart';

enum DropdownType { usage_daily, usage_weekly, usage_monthly, target_skill }

class DashboardDropdown extends StatefulWidget {
  final DashboardScreenProvider provider;
  final DropdownType dropdownType;

  DashboardDropdown({@required this.provider, @required this.dropdownType});

  @override
  _DashboardDropdownState createState() => _DashboardDropdownState();
}

class _DashboardDropdownState extends State<DashboardDropdown> {
  String dropdownValue;
  List<String> options;
  var action;

  @override
  void initState() {
    super.initState();
    switch (widget.dropdownType) {
      case DropdownType.usage_daily:
        this.dropdownValue = widget.provider.currentUsageDaily;
        this.options = kCurrentUsageDayOptions;
        this.action = (String change) => widget.provider
            .changeUsageDaily(kCurrentUsageDayOptions.indexOf(change));
        break;
      case DropdownType.usage_weekly:
        this.dropdownValue = widget.provider.currentUsageWeekly;
        this.options = kCurrentUsageWeekOptions;
        this.action = (String change) => widget.provider
            .changeUsageWeekly(kCurrentUsageWeekOptions.indexOf(change));
        break;
      case DropdownType.usage_monthly:
        //add similar stuff here, when it will be needed
        break;
      case DropdownType.target_skill:
        this.dropdownValue = widget.provider.currentSkill;
        this.options = kTargetSkill;
        this.action = (String change) =>
            widget.provider.changeTargetSkill(kTargetSkill.indexOf(change));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(248, 248, 248, 1),
          border: Border.all(color: Color.fromRGBO(234, 234, 234, 1)),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: false,
          child: DropdownButton<String>(
            value: dropdownValue,
            elevation: 16,
            iconSize: 0.0,
            isDense: true,
            isExpanded: false,
            style: AppTextStyles.dropdownTextStyle(),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
                action(newValue);
              });
            },
            items: this.options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
