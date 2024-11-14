import 'package:flutter/material.dart';
class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Lessons Learnt',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,),
      body: SingleChildScrollView(child: Container(width: MediaQuery.of(context).size.width*0.9,
        margin: EdgeInsets.only(top: 20, left: 20),
        decoration: BoxDecoration(
            color: Colors.pink.shade50.withOpacity(0.2),
            border: Border.all(color:Colors.pink.shade50)),
        child: Column(children: [Padding(
          padding: const EdgeInsets.only(left:20, right: 20,top: 10),
          child: RichText(text: TextSpan(children: [
            TextSpan(text: 'Technical Learnings:', style: TextStyle(fontSize:18,color: Colors.black,
                fontWeight: FontWeight.bold)),
            TextSpan(text:'\nWorking with Flutter provided an in-depth understanding of its widgets, state management techniques, and platform-specific optimizations. This experience has broadened our knowledge of using Flutter effectively to handle complex scenarios'

              ,style: TextStyle(color: Colors.black,fontSize: 17),
            ),

            TextSpan(text:'\n \nProblem-Solving:',style: TextStyle(color: Colors.black,
                fontSize: 18,fontWeight: FontWeight.bold) ),



            TextSpan(text: '\n Encountering and resolving bugs throughout the project honed our problem-solving skills. We learned to identify the root causes of issues quickly, especially when dealing with asynchronous code, which is vital in creating responsive apps.',style: TextStyle(color: Colors.black,fontSize: 17)),




            TextSpan(text: '\n \nUI/UX Design:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),

            TextSpan(text: '\nWe gained a deeper appreciation for user-centered design. By keeping user experience in mind, we learned the importance of balancing aesthetics with functionality, ensuring that the app was not only effective but also visually pleasing and easy to navigate.\n \n  '
                ,style: TextStyle(color: Colors.black,fontSize: 17)),
          ])),
        )

        ],),),

      ),

    );
  }
}
