import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learning_dashboard/constants.dart';
import 'package:http/http.dart' as http;
import 'package:learning_dashboard/helpers.dart';
import 'package:learning_dashboard/model/dashboard_model.dart';

class EliaApi {
  //makes api call to retrieve dashboard info for a mock user
  Future<DashboardModel> getDashboardInfo() async {
    print('[EliaApi], getDashboard');

    DashboardModel dashboardModel;

    final params = {'user_id': kUserId};
    String link = kDashboardInfoUrl;

    var uri = Uri.https(link, '/prod', params);

    // try {
    //   final response = await http.get(uri);
    //   print('[EliaApi] getDashboard() | response.statusCode: ' +
    //       response.statusCode.toString());
    //   Helpers.printWrapped(
    //       '[EliaApi] getDashboard() | response.body: ' + response.body);
    //   if (response.statusCode == 200) {
    //     dashboardModel =
    //         DashboardModel.fromJson(json.decode(response.body)['data']);
    //   }
    // }
    // catch (e) {
    //   print(e);
    // }

    String mockedJson =
        await rootBundle.loadString('assets/dashboard_json_mock.json');

    dashboardModel = DashboardModel.fromJson(json.decode(mockedJson));

    return dashboardModel;
  }
}
