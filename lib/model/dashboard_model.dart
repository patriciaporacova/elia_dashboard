class DashboardModel {
  KnownLemposes knownLemposes;
  int lemposesToNextLevel;
  double currentSkillCompletion;
  List<LearningProgressWeekly> learningProgressWeekly;
  double averageWeeklyLemposesLearnt;
  List<int> weeksToNextLevel;
  List<Sessions> sessions;

  DashboardModel(
      {this.knownLemposes,
        this.lemposesToNextLevel,
        this.currentSkillCompletion,
        this.learningProgressWeekly,
        this.averageWeeklyLemposesLearnt,
        this.weeksToNextLevel,
        this.sessions});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    knownLemposes = json['known_lemposes'] != null
        ? new KnownLemposes.fromJson(json['known_lemposes'])
        : null;
    lemposesToNextLevel = json['lemposes_to_next_level'];
    currentSkillCompletion = json['current_skill_completion'];
    if (json['learning_progress_weekly'] != null) {
      learningProgressWeekly = new List<LearningProgressWeekly>();
      json['learning_progress_weekly'].forEach((v) {
        learningProgressWeekly.add(new LearningProgressWeekly.fromJson(v));
      });
    }
    averageWeeklyLemposesLearnt = json['average_weekly_lemposes_learnt'];
    weeksToNextLevel = json['weeks_to_next_level'].cast<int>();
    if (json['sessions'] != null) {
      sessions = new List<Sessions>();
      json['sessions'].forEach((v) {
        sessions.add(new Sessions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.knownLemposes != null) {
      data['known_lemposes'] = this.knownLemposes.toJson();
    }
    data['lemposes_to_next_level'] = this.lemposesToNextLevel;
    data['current_skill_completion'] = this.currentSkillCompletion;
    if (this.learningProgressWeekly != null) {
      data['learning_progress_weekly'] =
          this.learningProgressWeekly.map((v) => v.toJson()).toList();
    }
    data['average_weekly_lemposes_learnt'] = this.averageWeeklyLemposesLearnt;
    data['weeks_to_next_level'] = this.weeksToNextLevel;
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class KnownLemposes {
  int assumed;
  int tracked;

  KnownLemposes({this.assumed, this.tracked});

  KnownLemposes.fromJson(Map<String, dynamic> json) {
    assumed = json['assumed'];
    tracked = json['tracked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['assumed'] = this.assumed;
    data['tracked'] = this.tracked;
    return data;
  }
}

class LearningProgressWeekly {
  Interval interval;
  int lemposesLearnt;

  LearningProgressWeekly({this.interval, this.lemposesLearnt});

  LearningProgressWeekly.fromJson(Map<String, dynamic> json) {
    interval = json['interval'] != null
        ? new Interval.fromJson(json['interval'])
        : null;
    lemposesLearnt = json['lemposes_learnt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.interval != null) {
      data['interval'] = this.interval.toJson();
    }
    data['lemposes_learnt'] = this.lemposesLearnt;
    return data;
  }
}

class Interval {
  int weeks;
  int months;

  Interval({this.weeks, this.months});

  Interval.fromJson(Map<String, dynamic> json) {
    weeks = json['weeks'];
    months = json['months'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weeks'] = this.weeks;
    data['months'] = this.months;
    return data;
  }
}

class Sessions {
  String sessionStart;
  int responseCount;
  int lengthSeconds;

  Sessions({this.sessionStart, this.responseCount, this.lengthSeconds});

  Sessions.fromJson(Map<String, dynamic> json) {
    sessionStart = json['session_start'];
    responseCount = json['response_count'];
    lengthSeconds = json['length_seconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_start'] = this.sessionStart;
    data['response_count'] = this.responseCount;
    data['length_seconds'] = this.lengthSeconds;
    return data;
  }
}