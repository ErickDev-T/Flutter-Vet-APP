import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  String bio;
  List<CalendarModel> calendar;

  DoctorModel(
      {required this.name,
      required this.image,
      required this.imageBox,
      required this.specialties,
      required this.score,
      required this.bio,
      required this.calendar});
  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
        name: 'Dr. Kemely Torres',
        image: 'assets/images/jenny.png',
        imageBox: const Color.fromARGB(255, 255, 163, 64).withOpacity(0.75),
        specialties: [
          'Pelaje',
          'Dentista',
          'Infecciones ',
          'Cirujana',
          'Análisis'
        ],
        score: 4.8,
        bio:
            'Dr. Kemely Rosario Experta en cuidar a los gatos, brindando un trato especial para su bienestar.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Martes',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Miercoles',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Jueves',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Viernes',
            isSelected: true
          ),
        ],
      ),
    );
    doctors.add(
      DoctorModel(
        name: 'Dra. Yesyskaira Cordero',
        image: 'assets/images/kristin.png',
        imageBox: const Color.fromARGB(136, 62, 209, 214).withOpacity(0.75),
        specialties: [
          'Infecciones ',
          'Cirujana',
          'Pelaje',
          'Dentista',
          'análisis'
        ],
        score: 4.1,
        bio:
            'Dra. Yesyskaira Cordero La doctora eres amable y dedicada, con experiencia en mantener saludables a los felinos.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Martes',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Miercoles',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Jueves',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Viernes',
            isSelected: true
          ),
        ],
      ),
    );
    return doctors;
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;

  CalendarModel({
    required this.dayNumber,
    required this.dayName,
    required this.isSelected
  });
}
