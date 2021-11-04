import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learning_dashboard/colors.dart';
import 'package:learning_dashboard/model/dashboard_model.dart';
import 'package:learning_dashboard/network/elia_api.dart';
import 'package:learning_dashboard/text_styles.dart';
import 'package:learning_dashboard/ui/screen/dashboard_screen_provider.dart';
import 'package:learning_dashboard/ui/widgets/dahsboard/dashboard_bordered_text.dart';
import 'package:learning_dashboard/ui/widgets/dahsboard/dashboard_dropdown.dart';
import 'package:learning_dashboard/giph/giph.dart';
import 'package:learning_dashboard/ui/widgets/thick_tab_bar.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _isLoaded = false;
  EliaApi api;
  DashboardModel _summaryData;

  @override
  void initState() {
    api = EliaApi();

    api.getDashboardInfo().then((value) {
      this._summaryData = value;
      this._isLoaded = true;
      setState(() {});
    }).catchError((e) {
      print(e);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: ThickTabBar(),
        body: !_isLoaded
            ? Center(child: CircularProgressIndicator())
            : MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                      create: (_) => DashboardScreenProvider(_summaryData))
                ],
                child: Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: TabBarView(
                      children: <Widget>[
                        SummaryCard(),
                        Center(
                          child: Text('This will be PROGRESS'),
                        ),
                        Center(
                          child: Text('This will be STATISTICS'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class SummaryCard extends StatefulWidget {
  @override
  _SummaryCardState createState() => _SummaryCardState();
}

class _SummaryCardState extends State<SummaryCard>
    with AutomaticKeepAliveClientMixin<SummaryCard> {
  Widget gif1;
  Widget gif2;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    gif1 = Giph.positive();
    gif2 = Giph.learn();

  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    DashboardScreenProvider provider =
        Provider.of<DashboardScreenProvider>(context);

    return ListView(children: [
      Container(
          padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: RichText(
                  text: TextSpan(
                      style:
                          AppTextStyles.plainTextStyle().copyWith(height: 2.5),
                      children: [
                        TextSpan(
                          text: 'If you continue using Elia for',
                        ),
                        WidgetSpan(
                          child: DashboardDropdown(
                              provider: provider,
                              dropdownType: DropdownType.usage_daily),
                        ),
                        WidgetSpan(
                          child: DashboardDropdown(
                              provider: provider,
                              dropdownType: DropdownType.usage_weekly),
                        ),
                        TextSpan(
                          text: 'you will be able to',
                        ),
                        WidgetSpan(
                          child: DashboardDropdown(
                              provider: provider,
                              dropdownType: DropdownType.target_skill),
                        ),
                        TextSpan(text: ' in '),
                        WidgetSpan(
                          child: DashboardBorderedText(
                              text: provider.targetDuration),
                        ),
                        TextSpan(text: "Isn't that amazing?"),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: LimitedBox(
                      maxHeight: 200, maxWidth: double.infinity, child: gif1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'How do I know?',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                    style: AppTextStyles.plainTextStyle().copyWith(height: 2.5),
                    children: [
                      TextSpan(
                        text: 'Because you currently seem to know around',
                      ),
                      WidgetSpan(
                        child: DashboardBorderedText(
                            textFixed: true,
                            text: provider.currentVocabSize.toString() +
                                '${provider.currentVocabSize <= 1 ? ' word' : ' words'}'),
                      ),
                      TextSpan(
                        text: 'which is around',
                      ),
                      WidgetSpan(
                        child: DashboardBorderedText(
                          textFixed: true,
                          text: '${provider.currentSkillCoverage}% of words',
                        ),
                      ),
                      TextSpan(text: 'found in'),
                      WidgetSpan(
                        child: DashboardBorderedText(
                          text: provider.targetLanguageDomain,
                          textFixed: true,
                        ),
                      ),
                      TextSpan(text: '. '),
                      TextSpan(text: 'And your learning speed is'),
                      WidgetSpan(
                        child: DashboardBorderedText(
                          textFixed: true,
                          text: provider.currentSpeed +
                              '${provider.summaryData.averageWeeklyLemposesLearnt <= 1 ? ' word' : ' words'} a week',
                        ),
                      ),
                      TextSpan(text: '.\n \n '),
                      TextSpan(text: 'And the minimal threshold required for'),
                      WidgetSpan(
                        child:
                            DashboardBorderedText(text: provider.currentSkill),
                      ),
                      TextSpan(text: ' ${'is'} '),
                      WidgetSpan(
                        child: DashboardBorderedText(
                            text: provider.thresholdTarget),
                      ),
                      TextSpan(text: '.\n \n '),
                      TextSpan(
                          text:
                              ' ${'So do the math yourself or scroll back.'} '),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: LimitedBox(
                      maxHeight: 200,
                      maxWidth: double.infinity,
                      child: gif2 //Giph.learn()
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: RichText(
                  text: TextSpan(
                    style: AppTextStyles.plainTextStyle(),
                    children: [
                      TextSpan(
                        text:
                            '*Disclaimer: This estimate will get better the more data we have.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    ]);
  }
}
