import 'package:flutter/material.dart';
class DoctorCard extends StatelessWidget {
  final String doctorimage;
  final String doctorname;
final String typeofdoctor;

  const DoctorCard({super.key,
   required this.doctorimage,
    required this.doctorname, 
    required this.typeofdoctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
                padding: EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[50],
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,   
         children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  doctorimage,
                  height: 100,
                ),
              ),
              Text(doctorname),
              Text(typeofdoctor),
            ],
          ),
      ),
    );
    
  }
}