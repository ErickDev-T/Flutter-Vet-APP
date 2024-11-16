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
        name: 'Dra.Kem',
        image: 'assets/images/jenny.png',
        imageBox: const Color(0xffFFA340).withOpacity(0.75),
        specialties: ['Pelaje', 'Dentista'],
        score: 4.8,
      ),
    );
    DoctorModel(
      name: 'Dra.Yesk',
      image: 'assets/images/kritin.png',
      imageBox: const Color(0xffFFA340).withOpacity(0.75),
      specialties: ['Infecciones ', 'Cirujana'],
      score: 4.1,
    );
    return doctors;
  }
}
