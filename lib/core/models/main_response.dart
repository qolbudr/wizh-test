class MainResponse<T> {
  num? code;
  num? count;
  String? message;
  String? token;
  T? data;

  MainResponse({this.message, this.data});

  MainResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJson) {
    count = json['count'];
    code = json['code'];
    token = json['token'];
    message = json['message'];
    data = json['data'] != null ? fromJson(json) : null;
  }
}