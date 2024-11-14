import 'package:flutter/material.dart';
class Development extends StatefulWidget {
  const Development({super.key});

  @override
  State<Development> createState() => _DevelopmentState();
}

class _DevelopmentState extends State<Development> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Development Process', style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
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
            TextSpan(text: 'planning and Designing:',
                style: TextStyle(fontSize: 18, color: Colors.black,
                    fontWeight: FontWeight.bold)),
            TextSpan(
              text: '\nThe project began with a series of brainstorming sessions, identifying core features and functionality to meet user needs. After finalizing these features, the team outlined the app’s objectives and specific goals.'
              , style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            TextSpan(
                text: '\nInitial wireframes were created to visualize the app\'s layout, navigation flow, and essential elements. Once the wireframes were approved, we developed high-fidelity designs using Figma, ensuring each screen and component met the desired aesthetic and usability standards.',
                style: TextStyle(color: Colors.black, fontSize: 17)),

            TextSpan(text: '\n \nImplementation:',
                style: TextStyle(color: Colors.black,
                    fontSize: 18, fontWeight: FontWeight.bold)),


            TextSpan(
                text: '\nFramework: Flutter was chosen for its ability to deliver a consistent user experience across platforms (Android and iOS) from a single codebase.',
                style: TextStyle(color: Colors.black, fontSize: 17)),

            TextSpan(
                text: '\nArchitecture: We implemented an MVC (Model-View-Controller) architecture to cleanly separate the UI from the business logic. This pattern was particularly useful in maintaining a scalable structure, which made the code more maintainable and allowed for better testing and debugging.',
                style: TextStyle(fontSize: 17, color: Colors.black)),


            TextSpan(text: '\n \nTesting & Debugging:',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),

            TextSpan(
                text: '\nWe carried out extensive testing on both Android and iOS devices to ensure smooth and responsive performance. Our testing process focused on responsiveness and cross-platform compatibility to catch and fix potential issues early.\nSeveral bugs surfaced during testing, particularly around platform-specific issues, like UI alignment differences between Android and iOS. We used Flutter’s built-in debugging tools to resolve these issues effectively.\n \n  '
                , style: TextStyle(color: Colors.black, fontSize: 17))
          ])),
        )

        ],),),

      ),
    );
  }
}