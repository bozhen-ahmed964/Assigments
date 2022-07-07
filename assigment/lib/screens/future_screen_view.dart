import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/models/data_model.dart';
import '../service/name_service.dart';

class FutureScreenView extends StatefulWidget {
  FutureScreenView({
    Key? key,
  }) : super(key: key);

  @override
  State<FutureScreenView> createState() => _FutureScreenViewState();
}

class _FutureScreenViewState extends State<FutureScreenView> {
  Names _getNames = Names();

  String initValue = "Male";
  List<String> gender = ["Male", "Female"];
  int initLimit = 5;
  List<int> limit = [5, 10, 20, 30 , 50 , 100];
  String gV = "M";
  List<String> pnList = ["positive", "negative"];
  String initPn = "positive";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Info'),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                    value: initValue,
                    items: gender.map((g) {
                      if (initValue == "Male") {
                        gV = "M";
                      } else {
                        gV = "F";
                      }
                      return DropdownMenuItem(
                        value: g,
                        child: Text(g),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        initValue = newValue!;
                      });
                    }),
                DropdownButton<String>(
                    value: initPn,
                    items: pnList.map((g) {
                      if (initPn == "positive") {
                        initPn = "positive";
                      } else {
                        initPn = "negative";
                      }
                      return DropdownMenuItem(
                        value: g,
                        child: Text(g.toString()),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        initPn = newValue!;
                      });
                    }),
                DropdownButton<int>(
                    value: initLimit,
                    items: limit.map((g) {
                      return DropdownMenuItem(
                        value: g,
                        child: Text(g.toString()),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        initLimit = newValue!;
                      });
                    }),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(20),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: FutureBuilder<KurdishNames>(
                  future: _getNames.FetchListOfNames(
                      gV, initLimit.toString(), initPn),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CupertinoActivityIndicator();
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else if (snapshot.data == null) {
                      return Text('No data');
                    } else {
                      return ListView.builder(
                          itemCount: initLimit,
                          itemBuilder: (context, index) {
                            return ExpansionTile(
                              title: Text(snapshot.data!.names[index].name),
                              children: [
                                Text(snapshot.data!.names[index].gender),
                                Text(snapshot.data!.names[index].desc),
                                Text(snapshot.data!.names[index].positive_votes
                                    .toString()),
                              ],
                            );
                          });
                    }
                  }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
