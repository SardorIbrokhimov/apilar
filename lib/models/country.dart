import 'package:apilar/models/parsing.dart';

class Country {
  bool error;
  String msg;
  List<Data> data=[];

  Country.fromJson(Map<String, dynamic> json)
      : error = json['error'],
        msg = json['msg'],
        data = List<Data>.from(json["data"].map((x) => Data.fromJson(x)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
