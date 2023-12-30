import 'package:flutter/material.dart';
import 'package:medicalapp/utilis.py/card.dart';
import 'package:medicalapp/utilis.py/doctor.dart';  // Assuming CategoryCard is defined here

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Rubi Maharjan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.person),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amberAccent,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fill out your medical card right now',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'How can we help you?',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
                    const SizedBox(height: 10),

        Container(
  height: 80, // Adjust the height as needed
  child: ListView(
    scrollDirection: Axis.horizontal,
    
    children: const [
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Dentist',
      ),
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Surgeon',
      ),
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Medicine',
      ),
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Medicine',
      ),
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Medicine',
      ),
      CategoryCard(
        imagePath: 'lib/icons/tooth.png',
        categoryName: 'Medicine',
      ),
    ],
  ),
),
                    const SizedBox(height: 10),

const Padding(
  padding: EdgeInsets.all(12),
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.start, 
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
      Text('Doctor list',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),),
      Text('See all'),
    ],
  ),
),
Expanded(
  child: ListView(
    scrollDirection: Axis.horizontal,

    children: const [
      DoctorCard(
        doctorimage: 'lib/images/girl.jpg',
       doctorname: 'Dr. Ariene McCoy', 
      typeofdoctor: 'Therapist'),
      DoctorCard(
        doctorimage: 'lib/icons/doctor2.jpg',
       doctorname: 'Dr. Ariene McCoy', 
      typeofdoctor: 'Therapist'),
      DoctorCard(
        doctorimage: 'lib/icons/doctor2.jpg',
       doctorname: 'Dr. Ariene McCoy', 
      typeofdoctor: 'Therapist'),
      DoctorCard(
        doctorimage: 'lib/icons/doctor2.jpg',
       doctorname: 'Dr. Ariene McCoy', 
      typeofdoctor: 'Therapist'),
      DoctorCard(
        doctorimage: 'lib/icons/doctor2.jpg',
       doctorname: 'Dr. Ariene McCoy', 
      typeofdoctor: 'Therapist'),
    ],
  ),
),
        ],
      ),
    
    );
  }
}
