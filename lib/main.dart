import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: '111Flutter Demo Home Page'),      
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.lightGreenAccent,
          title: Text(widget.title),
        ),
        body:  Column (
            children: [
              Container(
                height: 50,
                //color: Colors.amberAccent,
                //color: Colors.amberAccent,
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '검색',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.close), // 뒤쪽 아이콘
                    fillColor: Colors.deepPurpleAccent, // 채우기 색
                    filled: true, // 채우기 유무 default = false
                    //focusedBorder: OutlineInputBorder(), // 활성화 테두리
                    //enabledBorder: // 비활성화 테두리
                    //OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    //labelText: '라벨 텍스트',
                  ),

                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    postContainer(),
                    postContainer(),
                    postContainer(),
                    postContainer(),
                    postContainer(),
                    postContainer(),
                    postContainer(),
                  ],
                ),
              )
            ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('test'),
          child: Icon(Icons.access_alarm),

        ),
      ),
    );
  }

  Widget postContainer(){
    return Container(
          margin: const EdgeInsets.all(5),
          //width: MediaQuery.of(context).
          height: 150,
          color: Colors.blue,
          //alignment: Alignment.topRight,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 150,
                    color: Colors.amber,
                    alignment: Alignment.bottomRight,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 40,
                        color: Colors.deepPurpleAccent,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 40,
                        color: Colors.deepPurpleAccent[100],
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 40,
                        color: Colors.amberAccent[100],
                      )
                    ],
                  )

            ],
          ),
       );
  }

}
