import 'package:calculater/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Related.."),
      ),
      body: Container(
        margin: const EdgeInsets.all(7),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
              decoration: InputDecoration(
                  hintText: "Enter Your Number.",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 4, 52, 68), width: 1),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(
                    Icons.format_list_numbered_rounded,
                    color: Color.fromARGB(255, 227, 65, 6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 156, 5, 226), width: 2),
                  )),
            ),
            Container(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2controller,
              decoration: InputDecoration(
                  hintText: "Enter Your Number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 4, 52, 68), width: 1),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(
                    Icons.format_list_numbered_rtl,
                    color: Color.fromARGB(255, 227, 194, 6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 156, 5, 226), width: 2),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());

                        var sum = no1 + no2;
                        result = " $sum";
                        setState(() {});
                      },
                      child: const Text('Add')),
                  ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());

                        var sum = no1 - no2;
                        result = " $sum";
                        setState(() {});
                      },
                      child: const Text('Sub')),
                  ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());

                        var sum = no1 * no2;
                        result = " $sum";
                        setState(() {});
                      },
                      child: const Text('Multi')),
                  ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());

                        var sum = no1 / no2;
                        result = " $sum";
                        setState(() {});
                      },
                      child: const Text('Divi'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                result,
                style: const TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 44, 41, 33),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
