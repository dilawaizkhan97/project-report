

import 'package:flutter/material.dart';
class Challanges extends StatefulWidget {
  const Challanges({super.key});

  @override
  State<Challanges> createState() => _ChallangesState();
}

class _ChallangesState extends State<Challanges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Challenges', style: TextStyle(color: Colors
          .white, fontWeight: FontWeight.bold, fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,),

      body: SingleChildScrollView(child: Container(width: MediaQuery
          .of(context)
          .size
          .width * 0.9,
        margin: EdgeInsets.only(top: 20, left: 20),
        decoration: BoxDecoration(
            color: Colors.pink.shade50.withOpacity(0.2),
            border: Border.all(color: Colors.pink.shade200)),
        child: Column(children: [Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: RichText(text: TextSpan(children: [
            TextSpan(text: '1.  Cross-Platform Compatibility:\n',
                style: TextStyle(fontSize: 18, color: Colors.black,
                    fontWeight: FontWeight.bold)),
            TextSpan(
              text: '\nChallenge:\n Ensuring that the app functioned identically on both Android and iOS presented challenges, especially in areas like UI alignment and animations, which can differ between platforms. \n\nSolution:\n We utilized platform channels to handle device-specific features and implemented conditional widgets to address visual discrepancies between platforms, ensuring a seamless experience.'
              , style: TextStyle(color: Colors.black, fontSize: 17),
            ),


            TextSpan(text: '\n \n2.  State Management\n',
                style: TextStyle(color: Colors.black,
                    fontSize: 18, fontWeight: FontWeight.bold)),


            TextSpan(
                text: '\nChallenge:\nChoosing a state management strategy was challenging due to the need for scalability and ease of debugging. Initially, we explored different options and weighed their pros and cons.\n\n Solution:\n We eventually settled on a combination of Provider and Riverpod for efficient state management, as they provided clear separation between UI and state, making the code easier to follow and maintain.',
                style: TextStyle(color: Colors.black, fontSize: 17)),

            TextSpan(
                text: '', style: TextStyle(fontSize: 17, color: Colors.black)),


            TextSpan(text: '\n \n3.  Performance Optimization:\n',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),

            TextSpan(
                text: '\nChallenge:\n The app experienced slowdowns due to high-resolution images that needed to be loaded quickly without affecting performance.\n \nSolution:\n To tackle this, we implemented lazy loading and image caching, which allowed the app to load images only when necessary, reducing memory usage and improving overall speed.\n \n '
                , style: TextStyle(color: Colors.black, fontSize: 17))
          ])),
        )

        ],),),

      ),

    );
  }
}