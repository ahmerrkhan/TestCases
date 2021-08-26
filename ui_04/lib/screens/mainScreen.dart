import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  FlutterLocalNotificationsPlugin fltrNotification;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('app_icon');
    var initializationSetting =
        new InitializationSettings(android: androidInitialize);
    fltrNotification = new FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initializationSetting,
        onSelectNotification: notificationSelected);
  }

  Future _showNotifications() async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "Muhammad Ahmer ", "This is local notification",
        importance: Importance.max);
    var generalDetails = new NotificationDetails(android: androidDetails);

    await fltrNotification.show(0, "Hello Flutter", "You created a task", generalDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local notifications"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _showNotifications,
          child: Text("Press for notifications"),
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Future notificationSelected(String payload) async {}
}
