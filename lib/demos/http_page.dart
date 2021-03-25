import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HttpState();
  }
}

class _HttpState extends State<HttpPage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = Uri.parse('https://httpbin.org/ip');
    var client = http.Client();

    String result;
    var response = await client.get(url);
    if (response.statusCode == HttpStatus.ok) {
      var data = convert.jsonDecode(response.body);
      result = data['origin'];
    } else {
      result = 'Error getting IP address:\nHttp status ${response.statusCode}';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);
    return Scaffold(
      appBar: AppBar(title: const Text('Http Demo')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('Your current IP address is:'),
            new Text('$_ipAddress.'),
            spacer,
            new ElevatedButton(
              onPressed: _getIPAddress,
              child: new Text('Get IP address'),
            ),
          ],
        ),
      ),
    );
  }
}
