// import 'package:calculater/main.dart';
// import 'package:flutter/material.dart';

// class IntroPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
// title: const Text("Intro"),
// titleTextStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.only(top: 250),
//       child: Center(
//         child: Column(
//           children: [
//             const Text("Welcome" ,style:TextStyle(color: Color.fromARGB(255, 139, 96, 137),fontWeight: FontWeight.bold,fontSize: 25),),
//             const SizedBox(height: 15),

//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context){
//                 return const MyHomePage();
//               },
//               ),);

//             }, child: const Text('Next')),

//               ],
//   ),
//       ),
//     ),
//     );
//   }

// }

import 'dart:async';

import 'package:calculater/main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const MyHomePage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Intro"),
        //   titleTextStyle: const TextStyle(
        //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        // ),
        body: Container(
            color: const Color.fromARGB(255, 26, 28, 34),
          child: const Center(
            child:  Text(
              "Calculator Next",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ));
  }
}
