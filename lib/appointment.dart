import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';
import 'package:pms/main.dart';
import 'package:pms/patient.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Widget _buildHeaderCell(String text) {
      return Container(
        height: 50.h,
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 241, 241, 241),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15.sp,
            fontFamily: 'OpenSansEB',
            color: Colors.black,
          ),
        ),
      );
    }

    Widget _buildDataCell(String text) {
      return Container(
        alignment: Alignment.center,
        color: Colors.white,
        height: 50.h,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'OpenSansLight',
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
            color: Colors.black,
          ),
        ),
      );
    }

    TableRow _buildHeaderRow() {
      return TableRow(
        children: [
          _buildHeaderCell('Patient ID'),
          _buildHeaderCell('Patient Name'),
          _buildHeaderCell('Appointment'),
          _buildHeaderCell('Date'),
          _buildHeaderCell('Action'),
        ],
      );
    }

    TableRow _buildDataRow() {
      return TableRow(
        children: [
          _buildDataCell('25-0023'),
          _buildDataCell('Gene Jerrylene Arnigo Alvarez'),
          _buildDataCell('New Patient'),
          _buildDataCell('11-03-2024'),
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.check,
                  size: 24,
                  color: Color.fromARGB(255, 92, 230, 97),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.close,
                  size: 24,
                  color: Color.fromARGB(255, 226, 78, 78),
                ),
              ],
            ),
          ),
        ],
      );
    }

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
                                        color: Color.fromARGB(255, 252, 98, 98),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Appointment',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansEB',
                                      fontSize: 30.sp,
                                      color: Color.fromARGB(255, 182, 8, 37),
                                    ),
                                  ),

                                  SizedBox(
                                    height: screenHeight * 0.06,
                                    width: screenWidth * 0.2,
                                    child: TextField(
                                      style: TextStyle(fontSize: 15),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                        hintText: 'Search...',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.05),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: SizedBox(
                                  width: screenWidth,
                                  height: screenHeight * 0.6 + 200.h,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Table(
                                        border: TableBorder.all(
                                          color: Colors.black,
                                        ),
                                        columnWidths: {
                                          0: FixedColumnWidth(
                                            screenWidth * 0.1,
                                          ),
                                          1: FixedColumnWidth(
                                            screenWidth * 0.2,
                                          ),
                                          2: FixedColumnWidth(
                                            screenWidth * 0.15,
                                          ),
                                          3: FixedColumnWidth(
                                            screenWidth * 0.15,
                                          ),
                                          4: FixedColumnWidth(
                                            screenWidth * 0.1,
                                          ),
                                        },
                                        children: [
                                          _buildHeaderRow(),
                                          _buildDataRow(),
                                          _buildDataRow(), // Add more rows as needed
                                        ],
                                      ),
                                    ),
                                  ),
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
