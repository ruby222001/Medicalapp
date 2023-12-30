import 'package:flutter/material.dart';
import 'package:medicalapp/pages/homepage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
        Image.asset('lib/icons/doctor.png',
        ),
      const  Text(
          'All specialists in one app',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          ),
          ),
          const SizedBox(height: 10),
        const  Text('Find your doctor and make an appointment with one tap'),
                           const SizedBox(height: 10),

    GestureDetector(
      onTap:(){
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => const HomePage())
              );
      } ,
      child: Container(
      padding:const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(12),
        
      ),
        child: const Text('Get Started',
        style: TextStyle( color: Colors.white,
        ),
        ),
       ),
    ) ,
     ],
     ),
    );
  }
}