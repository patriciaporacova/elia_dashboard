import 'package:flutter/material.dart';
import 'package:learning_dashboard/text_styles.dart';

class ThickTabBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Dashboard',
        style: AppTextStyles.appBarStyle(),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      brightness: Brightness.light,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      bottom: TabBar(
        isScrollable: true,
        labelStyle: AppTextStyles.tabBarStyle(),
        labelColor: Colors.black,
        unselectedLabelColor: Color.fromRGBO(213, 213, 213, 1),
        indicatorWeight: 2.5,
        indicatorColor: Colors.black,
        tabs: [
          new Tab(
            child: Text('SUMMARY'),
          ),
          new Tab(
            child: Text('PROGRESS'),
          ),
          new Tab(
            child: Text('STATISTICS'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      new Size.fromHeight(56.0 + 50.0); //Size.fromHeight(appBar.preferredSize.height + 50.0);// + Size.fromHeight(60.0);//Size.fromHeight(90.0);

}
