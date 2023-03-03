import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ott_demo/utils/apiReleted/customSnackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services {
  postRequest({data, required url, required context}) async {
    try {
      print(url);
      var response = await http.post(
          Uri.parse(
            url,
          ),
          body: data,
          headers: {
            'content-type': 'application/json',
            'accept': 'application/json',
          });
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson;

        responseJson = json.decode(utf8.decode(response.bodyBytes));
        return responseJson;
      } else if (response.statusCode == 409) {
      } else {
        Map<String, dynamic> responseJson;
        responseJson = json.decode(utf8.decode(response.bodyBytes));
        if (responseJson["error"] != "") {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
        }
        return;
      }
    } catch (e) {
      return;
    }
  }

  postRequestForForm({data, required url, required context}) async {
    try {
      var response = await http.post(
          Uri.parse(
            url,
          ),
          body: data,
          headers: {"content-type": "application/x-www-form-urlencoded"});
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson;
        responseJson = json.decode(utf8.decode(response.bodyBytes));
        return responseJson;
      } else if (response.statusCode == 409) {
      } else {
        Map<String, dynamic> responseJson;
        responseJson = json.decode(utf8.decode(response.bodyBytes));
        if (responseJson["error"] != "") {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
        }
        return;
      }
    } catch (e) {
      return;
    }
  }

  postWithTokenRequest({data, required url, required context}) async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    print(prefs.getString('token'));
    var response = await http.post(
        Uri.parse(
          url,
        ),
        body: data,
        headers: {
          'content-type': 'application/json',
          'accept': 'application/json',
          "authorization": prefs.getString('token') ?? ""
        });
    if (response.statusCode == 200) {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      return responseJson;
    } else if (response.statusCode == 403) {
    } else {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      if (responseJson["error"] != "") {
        ScaffoldMessenger.of(context)
            .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
      }
    }
  }

  putRequest({data, required url, required context}) async {
    var response = await http.put(
        Uri.parse(
          url,
        ),
        body: data,
        headers: {"content-type": "application/x-www-form-urlencoded"});
    if (response.statusCode == 200) {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      return responseJson;
    } else if (response.statusCode == 409) {
    } else {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      if (responseJson["error"] != "") {
        ScaffoldMessenger.of(context)
            .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
      }
    }
  }

  getRequest({required url, required context}) async {
    var response = await http.get(
      Uri.parse(
        url,
      ),
    );

    print(url);
    Map<String, dynamic>? responseJson;
    print(response.statusCode);
    if (response.statusCode == 200) {
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      return responseJson;
    } else if (response.statusCode == 409) {
    } else {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      if (responseJson["error"] != "") {
        ScaffoldMessenger.of(context)
            .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
      }
    }
  }

  getWithTokenRequest(context, {required url}) async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    print(prefs.getString('token'));
    print(url);

    var response = await http.get(
        Uri.parse(
          url,
        ),
        headers: {
          "content-type": "application/x-www-form-urlencoded",
          "authorization": prefs.getString('token') ?? ""
        });

    if (response.statusCode == 200) {
      //  log(response.body);
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      return responseJson;
    } else if (response.statusCode == 403) {
    } else {
      Map<String, dynamic> responseJson;
      responseJson = json.decode(utf8.decode(response.bodyBytes));
      if (responseJson["error"] != "") {
        ScaffoldMessenger.of(context)
            .showSnackBar(CustomSnackbar().check(responseJson["error"]!));
      }
    }
  }
}
