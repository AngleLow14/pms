import 'package:flutter/material.dart';
import 'package:pms/appointment.dart';
import 'package:pms/heat_map.dart';
import 'package:pms/main.dart';
import 'package:pms/patient.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
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
                              SizedBox(height: screenHeight * 0.05),
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
                                        color: Color.fromARGB(255, 252, 98, 98),
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
                    SingleChildScrollView(
                      child: Container(
                        color: Color.fromARGB(255, 255, 245, 245),
                        height: screenHeight,
                        width: screenWidth * 0.7,
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.02,
                              width: screenWidth * 0.03,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: screenHeight * 0.15,
                                  width: screenWidth * 0.15,
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
                                  width: screenWidth * 0.3,
                                  height: screenHeight * 0.15,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.15,
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
                            SizedBox(height: screenHeight * 0.01),
                            SingleChildScrollView(
                              child: Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 200.h,
                                              width: 210.w,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Text(
                                                    'STD Cases',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 25.sp,
                                                      fontFamily: 'OpenSansSB',
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Text(
                                                    '86',
                                                    style: TextStyle(
                                                      fontSize: 50.sp,
                                                      fontFamily: 'OpenSansEB',
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: screenWidth * 0.01),
                                            Container(
                                              height: 200.h,
                                              width: 210.w,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Text(
                                                    'Sex',
                                                    style: TextStyle(
                                                      fontSize: 25.sp,
                                                      fontFamily: 'OpenSansSB',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.03,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Male',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.07,
                                                      ),
                                                      Text(
                                                        '50',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.03,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Female',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.06,
                                                      ),
                                                      Text(
                                                        '36',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        Column(
                                          children: [
                                            Container(
                                              height: 380.h,
                                              width: 430.w,
                                              color: Colors.white,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (content) =>
                                                              HeatMap(),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.asset(
                                                      'assets/map/spc.png',
                                                      height: 300.h,
                                                      width: 300.w,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 300.h,
                                              width: 200.w,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Text(
                                                    'Age Group',
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSansSB',
                                                      fontSize: 25.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.03,
                                                      ),
                                                      Text(
                                                        'Children',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.05,
                                                      ),
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.03,
                                                      ),
                                                      Text(
                                                        'Youth',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.06,
                                                      ),
                                                      Text(
                                                        '25',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.03,
                                                      ),
                                                      Text(
                                                        'Adult',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.065,
                                                      ),
                                                      Text(
                                                        '53',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.03,
                                                      ),
                                                      Text(
                                                        'Senior Citizen',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        '7',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.03,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Children (0-14)',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        screenHeight * 0.005,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Youth (15-24)',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        screenHeight * 0.005,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Adults (24-59)',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        screenHeight * 0.005,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Senior Citizens (60 above)',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.03,
                                            ),
                                            Container(
                                              height: 280.h,
                                              width: 200.w,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Civil Status',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansSB',
                                                        fontSize: 25.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Single',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.075,
                                                      ),
                                                      Text(
                                                        '56',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Married',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.06,
                                                      ),
                                                      Text(
                                                        '10',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Widowed',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.065,
                                                      ),
                                                      Text(
                                                        '5',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Separated',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.055,
                                                      ),
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Annulled',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.065,
                                                      ),
                                                      Text(
                                                        '0',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Live-In',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.07,
                                                      ),
                                                      Text(
                                                        '13',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.02,
                                                      ),
                                                      Text(
                                                        'Others',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.075,
                                                      ),
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                        SizedBox(width: screenWidth * 0.01),
                                        Column(
                                          children: [
                                            Container(
                                              height: 600.h,
                                              width: 190.w,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: screenHeight * 0.03,
                                                  ),
                                                  Text(
                                                    'Cases Classification',
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSansSB',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    ),
                                                  ),

                                                  SizedBox(
                                                    height: screenHeight * 0.1,
                                                  ),
                                                  Center(
                                                    child: SizedBox(
                                                      height: 80.h,
                                                      width: 80.w,
                                                      child: Expanded(
                                                        child: PieChart(
                                                          PieChartData(
                                                            sectionsSpace: 1,
                                                            centerSpaceRadius:
                                                                20,
                                                            sections: [
                                                              PieChartSectionData(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      94,
                                                                      204,
                                                                      98,
                                                                    ),
                                                                value: 30,
                                                                radius: 50,
                                                              ),
                                                              PieChartSectionData(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      228,
                                                                      55,
                                                                      43,
                                                                    ),
                                                                value: 20,
                                                                radius: 50,
                                                              ),
                                                              PieChartSectionData(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      224,
                                                                      64,
                                                                      117,
                                                                    ),
                                                                value: 20,
                                                                radius: 50,
                                                              ),
                                                              PieChartSectionData(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      153,
                                                                      153,
                                                                      153,
                                                                    ),
                                                                value: 15,
                                                                radius: 50,
                                                              ),
                                                              PieChartSectionData(
                                                                color:
                                                                    Colors
                                                                        .orangeAccent,
                                                                value: 15,
                                                                radius: 50,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight * 0.1,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Container(
                                                        height: 15.h,
                                                        width: 15.w,

                                                        decoration:
                                                            BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    240,
                                                                    75,
                                                                    63,
                                                                  ),
                                                            ),
                                                        child: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        '5',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Container(
                                                        height: 15.h,
                                                        width: 15.w,
                                                        padding: EdgeInsets.all(
                                                          8.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    183,
                                                                    50,
                                                                  ),
                                                            ),
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        '10',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),

                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Container(
                                                        height: 15.h,
                                                        width: 15.w,

                                                        decoration:
                                                            BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    153,
                                                                    153,
                                                                    153,
                                                                  ),
                                                            ),
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        '22',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Container(
                                                        height: 15.h,
                                                        width: 15.w,

                                                        decoration:
                                                            BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    94,
                                                                    204,
                                                                    98,
                                                                  ),
                                                            ),
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        '45',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: screenHeight * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Container(
                                                        height: 15.h,
                                                        width: 15.w,

                                                        decoration:
                                                            BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    224,
                                                                    64,
                                                                    117,
                                                                  ),
                                                            ),
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.01,
                                                      ),
                                                      Text(
                                                        '14',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
