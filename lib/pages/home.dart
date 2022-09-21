import 'package:apilar/models/parsing.dart';
import 'package:apilar/models/country.dart';
import 'package:apilar/services/network.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String id = "";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Data> items =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apigetList();
  }

  void apigetList() {
    Network.GET(Network.base_api + Network.api_list, Network.paramsEmpty())
        .then((value) => {
              print(value),
               showvalue(value),
            });
  }

  void apigetflag() {
    Network.GET(Network.base_api + Network.api_flag, Network.paramsEmpty())
        .then((value) => {
              print(value),
            });
  }

  showvalue(var value) {
Country city=Network.parseData(value);
    setState(() {
      items.addAll(city.data);


    });
    print(items.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${items!.length}"),
      ),
    );
  }
}
