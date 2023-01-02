import 'dart:convert';

List<int> welcomeFromJson(String str) => List<int>.from(json.decode(str).map((x) => x));

String welcomeToJson(List<int> data) => json.encode(List<dynamic>.from(data.map((x) => x)));

List<int> answers = [0,2,1,3,1,2];

