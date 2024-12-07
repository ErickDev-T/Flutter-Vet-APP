import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  String bio;
  List<CalendarModel> calendar;
  List<TimeModel> time;
  DoctorModel(
      {required this.name,
      required this.image,
      required this.imageBox,
      required this.specialties,
      required this.score,
      required this.bio,
      required this.calendar,
      required this.time});

  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
          name: 'Dr. Yeyskaira',
          image: 'assets/images/jenny.png',
          imageBox: const Color(0xffFFA340).withOpacity(0.3),
          specialties: [
            'Veterinario Generalista',
            'Especialista en Medicina Felina',
            'Cirujano Veterinario'
          ],
          score: 4.5,
          bio:
              'Dr. Yeyskaira, es dentista en República Dominicana, tiene 20 años de experiencia.',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Lunes', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Martes', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Mierc', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Jueves', isSelected: false)
          ],
          time: [
            TimeModel(time: '09:00 AM', isSelected: true),
            TimeModel(time: '11:00 AM', isSelected: false),
            TimeModel(time: '03:00 PM', isSelected: false)
          ]),
    );
    doctors.add(DoctorModel(
        name: 'Dr. Kemely',
        image: 'assets/images/kristin.png',
        imageBox: const Color(0xff3CFFC4).withOpacity(0.3),
        specialties: [
          'Especialista en Medicina Felina',
          'Cirujano Veterinario',
          'Dentista Veterinario',
          'Oncólogo Veterinario',
          'Internista Veterinario'
        ],
        score: 4.8,
        bio: 'Dr. Kemely, dentista con 20 años de experiencia.',
        calendar: [
          CalendarModel(dayNumber: 14, dayName: 'Lunes', isSelected: false),
          CalendarModel(dayNumber: 15, dayName: 'Jueves', isSelected: false),
          CalendarModel(dayNumber: 16, dayName: 'Viernes', isSelected: true),
          CalendarModel(dayNumber: 17, dayName: 'Sábado', isSelected: false)
        ],
        time: [
          TimeModel(time: '09:00 AM', isSelected: true),
          TimeModel(time: '11:00 AM', isSelected: false),
          TimeModel(time: '03:00 PM', isSelected: false)
        ]));
    return doctors;
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;
  CalendarModel(
      {required this.dayNumber,
      required this.dayName,
      required this.isSelected});
}

class TimeModel {
  final String time;
  bool isSelected;
  TimeModel({required this.time, required this.isSelected});
}
