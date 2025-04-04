import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';
import 'package:pms/appointment.dart';
import 'package:pms/patient.dart';
import 'package:pms/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeatMap extends StatelessWidget {
  const HeatMap({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 255, 245, 245),
          height: screenHeight * 1,
          width: screenWidth * 1,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 255, 251, 251),
                          height: screenHeight * 1,
                          width: screenWidth * 0.25,
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Container(
                                height: screenHeight * 0.2,
                                width: screenWidth * 0.2,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Center(
                                child: Text(
                                  'San Pablo Social Hygiene Clinic',
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    fontFamily: 'OpenSansEB',
                                    color: Color.fromARGB(255, 182, 8, 37),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 35.h,
                                  width: 150.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dashboard(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: 'OpenSansLight',
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 43, 43, 43),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Center(
                                child: SizedBox(
                                  height: 35.h,
                                  width: 150.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Patients(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Patients',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: 'OpenSansLight',
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 43, 43, 43),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Center(
                                child: SizedBox(
                                  height: 35.h,
                                  width: 150.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Appointment(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Appointments',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: 'OpenSansLight',
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 43, 43, 43),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.25),
                              SizedBox(
                                height: 35.h,
                                width: 150.w,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansLight',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: Color.fromARGB(255, 43, 43, 43),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Column(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 255, 245, 245),
                          height: MediaQuery.of(context).size.height,
                          width: screenWidth * 0.7,
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.01,
                                width: screenWidth * 0.03,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.15,
                                    height: screenHeight * 0.1,
                                    child: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30.sp,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.2,
                                    height: screenHeight * 0.1,
                                    child: Text(
                                      '>  Heat Map',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30.sp,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.1),
                                  SizedBox(
                                    height: screenHeight * 0.1,
                                    width: screenWidth * 0.2,
                                    child: TextField(
                                      style: TextStyle(fontSize: 15),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            50.0,
                                          ),
                                        ),
                                        hintText: 'Search...',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: screenHeight * 0.7,
                                        width: screenWidth * 0.4,
                                        color: Colors.white,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => HeatMap(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Image.asset(
                                                'assets/map/spc.png',
                                                height: screenHeight * 0.7,
                                                width: screenHeight * 0.7,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: screenWidth * 0.03),
                                  Container(
                                    color: Colors.white,
                                    width: 250.w,
                                    height: 550.h,
                                    child: Column(
                                      children: [
                                        SizedBox(height: screenHeight * 0.02),
                                        Center(
                                          child: Text(
                                            'Infection Cases',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansEB',
                                              fontSize: 25.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.03),
                                        Row(
                                          children: [
                                            SizedBox(width: screenWidth * 0.02),
                                            Container(
                                              height: 15.h,
                                              width: 15.w,
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color.fromARGB(
                                                  255,
                                                  255,
                                                  51,
                                                  51,
                                                ),
                                              ),
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                            SizedBox(width: screenWidth * 0.02),
                                            Text(
                                              'Severe',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: screenHeight * 0.03),
                                        Row(
                                          children: [
                                            SizedBox(width: screenWidth * 0.02),
                                            Container(
                                              height: 15.h,
                                              width: 15.w,
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color.fromARGB(
                                                  255,
                                                  255,
                                                  183,
                                                  50,
                                                ),
                                              ),
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                            SizedBox(width: screenWidth * 0.02),
                                            Text(
                                              'High',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: screenHeight * 0.03),
                                        Row(
                                          children: [
                                            SizedBox(width: screenWidth * 0.02),
                                            Container(
                                              height: 15.h,
                                              width: 15.w,
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color.fromARGB(
                                                  255,
                                                  255,
                                                  251,
                                                  41,
                                                ),
                                              ),
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                            SizedBox(width: screenWidth * 0.02),
                                            Text(
                                              'Moderate',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: screenHeight * 0.03),
                                        Row(
                                          children: [
                                            SizedBox(width: screenWidth * 0.02),
                                            Container(
                                              height: 15.h,
                                              width: 15.w,
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color.fromARGB(
                                                  255,
                                                  62,
                                                  255,
                                                  62,
                                                ),
                                              ),
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                            SizedBox(width: screenWidth * 0.02),
                                            Text(
                                              'Low',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
