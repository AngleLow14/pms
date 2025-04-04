import 'package:flutter/material.dart';
import 'package:pms/appointment.dart';
import 'package:pms/detail.dart';
import 'package:pms/main.dart';
import 'package:pms/dashboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Patients extends StatelessWidget {
  const Patients({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth * 1,
          height: screenHeight * 1,
          color: Color.fromARGB(255, 255, 245, 245),
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
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                children: [
                                  SizedBox(
                                    height: screenHeight * 0.15,
                                    width: screenWidth * 0.25,
                                    child: Text(
                                      'Patients',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30.sp,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.2,
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
                              SizedBox(height: screenHeight * 0.05),
                              SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.06,
                                child: Table(
                                  border: TableBorder.all(color: Colors.black),
                                  columnWidths: {
                                    0: FixedColumnWidth(80.0),
                                    1: FixedColumnWidth(200.0),
                                    2: FixedColumnWidth(30.0),
                                    3: FixedColumnWidth(75.0),
                                    4: FixedColumnWidth(120.0),
                                    5: FixedColumnWidth(100.0),
                                  },
                                  children: [
                                    TableRow(
                                      children: [
                                        Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          child: Text(
                                            'Patient ID',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'OpenSansEB',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          child: Text(
                                            'Patient Name',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansEB',
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          child: Text(
                                            'Age',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'OpenSansEB',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          child: Text(
                                            'Status',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansEB',
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          child: Text(
                                            'Recent Record',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansEB',
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          color: const Color.fromARGB(
                                            255,
                                            241,
                                            241,
                                            241,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Action',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'OpenSansEB',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                    TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '25-0023',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Gene Jerrylene Arnigo Alvarez',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '29',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Active',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'February 28, 2024',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          ViewDetails(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              textStyle:
                                                  MaterialStateProperty.all<
                                                    TextStyle
                                                  >(
                                                    TextStyle(
                                                      decoration:
                                                          TextDecoration
                                                              .underline,
                                                    ),
                                                  ),
                                            ),
                                            child: const Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '25-0023',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Gene Jerrylene Arnigo Alvarez',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '29',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Active',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'February 28, 2024',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          ViewDetails(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              textStyle:
                                                  MaterialStateProperty.all<
                                                    TextStyle
                                                  >(
                                                    TextStyle(
                                                      decoration:
                                                          TextDecoration
                                                              .underline,
                                                    ),
                                                  ),
                                            ),
                                            child: const Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '25-0023',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Gene Jerrylene Arnigo Alvarez',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '29',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Recovered',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'February 28, 2024',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          ViewDetails(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              textStyle:
                                                  MaterialStateProperty.all<
                                                    TextStyle
                                                  >(
                                                    TextStyle(
                                                      decoration:
                                                          TextDecoration
                                                              .underline,
                                                    ),
                                                  ),
                                            ),
                                            child: const Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '25-0023',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Gene Jerrylene Arnigo Alvarez',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '29',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Active',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'February 28, 2024',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          ViewDetails(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              textStyle:
                                                  MaterialStateProperty.all<
                                                    TextStyle
                                                  >(
                                                    TextStyle(
                                                      decoration:
                                                          TextDecoration
                                                              .underline,
                                                    ),
                                                  ),
                                            ),
                                            child: const Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '25-0023',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Gene Jerrylene Arnigo Alvarez',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            '29',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'Active',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height: 35,
                                          child: Text(
                                            'February 28, 2024',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansLight',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          ViewDetails(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              textStyle:
                                                  MaterialStateProperty.all<
                                                    TextStyle
                                                  >(
                                                    TextStyle(
                                                      decoration:
                                                          TextDecoration
                                                              .underline,
                                                    ),
                                                  ),
                                            ),
                                            child: const Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontFamily: 'OpenSansLight',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
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
