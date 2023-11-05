import 'package:flexi_whatsapp_share/flexi_whatsapp_share.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flexi_whatsapp_share',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'flexi_whatsapp_share'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(

        child:  Text('For whatsapp share click on share button',),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: flexi_whatsapp_share.share(message: "hello,this is a test message from flexi_image_share", mobileNumber: "+916655443355"),
        child: const Icon(Icons.share),
      ),
    );
  }
}
