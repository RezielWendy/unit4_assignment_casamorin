import 'package:flutter/material.dart';

void main() {
  runApp(Unit4Assignment());
}

class Unit4Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unit4_assignment_casamorin',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ASSIGNMENT FOR UNIT 4',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 162, 70, 12),
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('lib/assets/profile.jpg'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Reziel Wendy Casamorin',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          border: Border.all(color: Colors.brown),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildInfoRow(
                                Icons.cake, 'Birthdate', 'January 25, 2004'),
                            buildInfoRow(Icons.home, 'Address',
                                'Cata-an, San Joaquin, Iloilo'),
                            buildInfoRow(Icons.email, 'Email',
                                'rezielwendycasamorin@gmail.com'),
                            buildInfoRow(Icons.phone, 'Phone', '09380124645'),
                            buildInfoRow(Icons.school, 'Education',
                                'West Visayas State University'),
                            buildInfoRow(Icons.book, 'Course',
                                'Bachelor of Science in Information Technology'),
                            buildInfoRow(Icons.favorite, 'Hobbies',
                                'Studying, Sleeping'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          border: Border.all(color: Colors.brown),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Biography',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 13),
                            Text(
                              'I am Reziel Wendy Casamorin, a third year BSIT student studying at West Visayas State University, majoring in Software Technologies. '
                              'I am passionate about technology and enjoy learning about new advancements in IT. '
                              'My hobbies include studying, learning coding, dancing, doing recreational activities, reading and stuff that involves vigorous activites. '
                              'I also love spending my spare time walking in the seashore to inhale fresh air and to ease my mind from academic stress. '
                              'It is my honor to be part of the well-known university and to learn through the teachings of our aspiring professional teachers. I aspire to become a software developer someday who contributes to impactful projects.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String label, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Colors.black),
          SizedBox(width: 20),
          Container(
            width: 120,
            child: Text(
              '$label:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              data,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
