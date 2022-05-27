import 'package:flutter/material.dart';
import 'package:flutter_common_package/flutter_common_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: MyListView(
        children: [
          Text('MyButton'),
          MyButton(text: 'Hello'),
          MyButton(text: 'Hello', myButtonTypes: [ MyButtonType.collection ],),
          MyButton(text: 'Hello', myButtonTypes: [ MyButtonType.collection, MyButtonType.hard ],),
          MyButton(text: 'Star 0', level: 0,),
          MyButton(text: 'Star 1', level: 1,),
          MyButton(text: 'Star 5', level: 5,),
          MyButton(text: 'Star 10', level: 10,),
          MyButton(text: 'Star 14', level: 14,),
          MyButton(text: 'Star 15 (Max)', level: 15,),
          MyButton(text: 'Hello', myButtonTypes: [ MyButtonType.collection, MyButtonType.hard ], level: 15,),
          Divider(),

          Text('MyColumn'),
          MyColumn(
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
