import 'package:flutter/material.dart';
import 'package:vet_app_html/models/dortor.dart';

class DetailsPage extends StatefulWidget {
  final DoctorModel doctorModel;
  const DetailsPage({
    required this.doctorModel,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<CalendarModel> calendarData = [];

  @override
  void activate() {
    super.activate();
    super.initState();
    calendarData = widget.doctorModel.calendar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 100,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff050618).withOpacity(0.06),
                    blurRadius: 25,
                    offset: const Offset(0, 4))
              ],
            ),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        title: const Text(
          'Detail Doctor',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            info(),
            const SizedBox(
              height: 30,
            ),
            calendar()
          ],
        ),
      ),
    );
  }

  Widget info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Container(
                width: 90,
                decoration: BoxDecoration(
                  color: widget.doctorModel.imageBox,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(widget.doctorModel.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.doctorModel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.doctorModel.specialties.first,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.doctorModel.score.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Biography',
          style:
              TextStyle(color: Color(0xff09121C), fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.doctorModel.bio,
          style: TextStyle(
              color: const Color(0xff09121C).withOpacity(0.5),
              fontWeight: FontWeight.w300,
              fontSize: 12),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Especialidades',
          style: TextStyle(
            color: Color(0Xff09121C),
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                widget.doctorModel.specialties[index],
                style: const TextStyle(
                  color: Color(0xff09121C),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 80,
            ),
            itemCount: widget.doctorModel.specialties.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }

  Widget calendar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Calendar',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    for (var item in calendarData) {
                      item.isSelected = false;
                    }
                    calendarData[index].isSelected = true;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: calendarData[index].isSelected
                            ? const Color(0xff51A8FF)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 25,
                            color: calendarData[index].isSelected
                                ? const Color(0xff51A8FF).withOpacity(0.45)
                                : const Color(0xff050618).withOpacity(0.05),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          calendarData[index].dayNumber.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: calendarData[index].isSelected
                                  ? const Color.fromARGB(255, 167, 103, 103)
                                  : Colors.black),
                        ),
                        Text(
                          calendarData[index].dayName,
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 12,
                              color: calendarData[index].isSelected
                                  ? const Color.fromARGB(255, 155, 80, 80)
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 50,
                  ),
              itemCount: calendarData.length),
        )
      ],
    );
  }
}
