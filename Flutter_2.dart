import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (content, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: ListTile(
                      leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbWNIAncuiWYTiIUxRRg0YLgCwH1JlHiWegA&usqp=CAU"),
                      title: Text(
                        "Sepatu",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Ukuran 30-37",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
