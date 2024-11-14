import 'package:flutter/material.dart';
import 'package:untitled5/view/homescreen/lessons.dart';
 // Correct import for Lessons
import 'Development.dart';
import 'challenges.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with custom background color and centered title
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text(
          'Project Report',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Overall padding for the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              // Container 1: Development
              _buildImageCard(
                'lib/view/assets/report3.jpg',
                'Development',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Development()),
                  );
                },
              ),
              SizedBox(height: 20), // Space between containers

              // Container 2: Challenges
              _buildImageCard(
                'lib/view/assets/report4.jpg',
                'Challenges',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Challanges()),
                  );
                },
              ),
              SizedBox(height: 20), // Space between containers

              // Container 3: Lessons
              _buildImageCard(
                'lib/view/assets/report1.jpg',
                'Lessons',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lessons()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build image card with label and navigation
  Widget _buildImageCard(String imagePath, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6, // Reduce width to 60% of screen
          height: 180, // Set a fixed height for each image container
          margin: EdgeInsets.symmetric(vertical: 10), // Add margin between containers
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover, // Ensure image covers the container
            ),
            borderRadius: BorderRadius.circular(15), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 4), // Shadow offset
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.center, // Center the label
            child: Center(
              child: Container(
                color: Colors.black.withOpacity(0.5), // Transparent overlay for text readability
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Padding around the text
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 22, // Slightly larger text size
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center, // Center the text horizontally
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
