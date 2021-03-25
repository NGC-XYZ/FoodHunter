import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DioState();
  }
}

class _DioState extends State<DioPage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    final dio = Dio();

    String result;
    var response = await dio.get('https://httpbin.org/ip');
    if (response.statusCode == HttpStatus.OK) {
      var data = response.data;
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
      appBar: AppBar(title: const Text('Dio Demo')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('Your current IP address is:'),
            new Text('$_ipAddress.'),
            spacer,
            new RaisedButton(
              onPressed: _getIPAddress,
              child: new Text('Get IP address'),
            ),
          ],
        ),
      ),
    );
  }
}
