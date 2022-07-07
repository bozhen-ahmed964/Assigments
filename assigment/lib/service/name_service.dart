import 'package:http/http.dart' as http;

import '../models/data_model.dart';

class Names {
 Future<KurdishNames> FetchListOfNames(String g, String l, String p) async {
    final Uri _nameUri = Uri(
      scheme: 'https',
      host: 'nawikurdi.com',
      path: 'api',
      queryParameters: {"limit": l, "offset": "0" , "sort": p , "gender" : g},
    );

    http.Response _response =
        await http.get(_nameUri).catchError((err) => print(err));


    KurdishNames _nameData =  KurdishNames.fromJson(_response.body);



    print(_response.body);
    return _nameData;
  }
}
