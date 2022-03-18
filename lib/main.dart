import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'bubble_kang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   bool isClose = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // pos
    Offset _offset =
        Offset(size.width - (size.width / 4), size.height - (size.width / 2.3));
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
        Visibility(
        visible: !isClose,
            child: BubbleAnimationWidget(
              width: 64,
              offset: _offset,
              onTapClose: () {
                isClose = true;
                setState(() {});
              },
              onTap: () {
                print("Check");
                showToast('Love you',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom);
              },
              imageUrl: 'https://post.healthline.com/wp-content/uploads/2020/09/healthy-eating-ingredients-732x549-thumbnail-732x549.jpg',
            ),
          ),
        ],
      ),
    );
  }

}
