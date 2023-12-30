import 'package:flutter/material.dart';
class DoctorCard extends StatelessWidget {
  final String doctorimage;
  final String doctorname;
final String typeofdoctor;
final String rating;

  const DoctorCard({super.key,
   required this.doctorimage,
    required this.doctorname, 
    required this.typeofdoctor, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
                padding: const EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[50],
      ),
      child: Column(
         children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  doctorimage,
                  height: 40,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star,color:Colors.yellow[600]),
                  Text(rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
                        const SizedBox(height: 10),

              Text(doctorname,
              style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(typeofdoctor),
            ],
          ),
      ),
    );
    
  }
}