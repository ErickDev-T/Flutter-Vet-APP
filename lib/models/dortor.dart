import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  DoctorModel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.specialties,
    required this.score,
  });
  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
        name: 'Dr. Kemely Rosario',
        image: 'assets/images/jenny.png',
        imageBox: const Color.fromARGB(255, 255, 163, 64).withOpacity(0.75),
        specialties: ['Pelaje', 'Dentista'],
        score: 4.8,
      ),
    );
    doctors.add(
      DoctorModel(
        name: 'Dra. Yesyskaira Cordero',
        image: 'assets/images/kristin.png',
        imageBox: const Color.fromARGB(136, 62, 209, 214).withOpacity(0.75),
        specialties: ['Infecciones ', 'Cirujana'],
        score: 4.1,
      ),
    );
    return doctors;
  }
}
