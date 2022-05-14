import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        // titleTextStyle: TextStyle(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Card(
              elevation: 0,
              // shape:const StadiumBorder(),
              shape: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              child: ListTile(
                leading: Image.asset('assets/logoyim.png', fit: BoxFit.cover),
                title: Text('Airplane $index'),
                subtitle: const Text('Very Cool'),
                onTap: () => print('Tapped on Row $index'),
              ),
            ),
          );
        },
      ),
    );
  }
}
