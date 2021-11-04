import 'dart:core';

import 'package:flutter/material.dart';
import 'package:learning_dashboard/constants.dart';
import 'package:learning_dashboard/model/dashboard_model.dart';

class DashboardScreenProvider extends ChangeNotifier {
  int currentUsageDayIndex = 0;
  int currentUsageWeekIndex = 0;
  int targetSkillIndex = 0;

  DashboardModel _summaryData;

  DashboardScreenProvider(this._summaryData) {
    notifyListeners();
  }

  DashboardModel get summaryData => _summaryData;

  String get currentUsageDaily => kCurrentUsageDayOptions[currentUsageDayIndex];

  String get currentUsageWeekly =>
      kCurrentUsageWeekOptions[currentUsageWeekIndex];

  String get currentSkill => kTargetSkill[targetSkillIndex];

  String get targetDuration => '3 weeks and 4 days';

  int get currentVocabSize =>
      _summaryData.knownLemposes.assumed + _summaryData.knownLemposes.tracked;

  int get currentSkillCoverage => _summaryData.currentSkillCompletion.toInt();

  String get currentSkillCoverageText =>
      currentSkillCoverage.toString() + '% of words';

  String get targetLanguageDomain => kTargetLanguageDomain;

  String get currentSpeed =>
      _summaryData.averageWeeklyLemposesLearnt.toInt().toString();

  String get vocabSizeText =>
      currentVocabSize.toString() +
      " ${currentVocabSize <= 1 ? 'word' : 'words'}";

  String get thresholdTarget => targetSkillIndex == 0 || targetSkillIndex == 2
      ? targetCoverageLikeProString
      : targetCoverageLikeProString;

  void changeTargetSkill(int change) {
    targetSkillIndex = change;
    notifyListeners();
  }

  void changeUsageDaily(int change) {
    currentUsageDayIndex = change;
    notifyListeners();
  }

  void changeUsageWeekly(int change) {
    currentUsageWeekIndex = change;
    notifyListeners();
  }

  void changeUsageMonthly() {
    notifyListeners();
  }
}
