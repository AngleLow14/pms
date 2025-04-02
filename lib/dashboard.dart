import 'package:flutter/material.dart';
import 'package:pms/appointment.dart';
import 'package:pms/heat_map.dart';
import 'package:pms/main.dart';
import 'package:pms/patient.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 251, 251),
                        height: MediaQuery.of(context).size.height,
                        width: 350,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Container(
                              height: 150,
                              width: 150,
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
                            const SizedBox(height: 30),
                            Text(
                              'San Pablo Social Hygiene Clinic',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'OpenSansEB',
                                color: Color.fromARGB(255, 182, 8, 37),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(left: 55),
                              child: SizedBox(
                                height: 35,
                                width: 130,
                                child: const Text(
                                  'Dashboard',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 252, 98, 98),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Patients(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Patients',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 43, 43, 43),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Appointment(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Appointment',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansLight',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 43, 43, 43),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 205),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Log Out',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
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
                  Container(
                    color: const Color.fromARGB(255, 255, 245, 245),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45, top: 40),
                              child: SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Dashboard',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 182, 8, 37),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 345, top: 40),
                              child: SizedBox(
                                height: 80,
                                width: 300,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    hintText: 'Search...',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: const Color.fromARGB(255, 255, 245, 245),
                          child: SingleChildScrollView(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 170,
                                          width: 200,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 50,
                                                ),
                                                child: Text(
                                                  'STD Cases',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: 'OpenSansSB',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              const Text(
                                                '86',
                                                style: TextStyle(
                                                  fontSize: 50,
                                                  fontFamily: 'OpenSansEB',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Container(
                                          height: 170,
                                          width: 200,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 105,
                                                ),
                                                child: Text(
                                                  'Sex',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: 'OpenSansSB',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Male',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 85,
                                                    ),
                                                    child: Text(
                                                      '50',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Female',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 70,
                                                    ),
                                                    child: Text(
                                                      '36',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                    const SizedBox(height: 15),
                                    Column(
                                      children: [
                                        Container(
                                          height: 330,
                                          width: 420,
                                          color: Colors.white,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (content) => HeatMap(),
                                                ),
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/map/spc.png',
                                                  height: 300,
                                                  width: 300,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 15),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 250,
                                          width: 220,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 15,
                                                  right: 50,
                                                ),
                                                child: Text(
                                                  'Age Group',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansSB',
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Children',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 65,
                                                    ),
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Youth',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 75,
                                                    ),
                                                    child: Text(
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
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
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
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 80,
                                                    ),
                                                    child: Text(
                                                      '53',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Senior Citizen',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      '7',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Children (0-14)',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Youth (15-24)',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Adults (24-59)',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Senior Citizens (60 above)',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Container(
                                          height: 250,
                                          width: 220,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 15,
                                                  right: 50,
                                                ),
                                                child: Text(
                                                  'Civil Status',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansSB',
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
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
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 95,
                                                    ),
                                                    child: Text(
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
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Married',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 80,
                                                    ),
                                                    child: Text(
                                                      '10',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
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
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 80,
                                                    ),
                                                    child: Text(
                                                      '5',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Separated',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 75,
                                                    ),
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Annulled',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 85,
                                                    ),
                                                    child: Text(
                                                      '0',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Live-In',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 95,
                                                    ),
                                                    child: Text(
                                                      '13',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 30,
                                                    ),
                                                    child: Text(
                                                      'Others',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                      left: 100,
                                                    ),
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'OpenSansLight',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
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
                                    const SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Container(
                                          height: 520,
                                          width: 220,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  'Cases Classification',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansSB',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 50),
                                              Center(
                                                child: SizedBox(
                                                  height: 100,
                                                  width: 100,
                                                  child: PieChart(
                                                    PieChartData(
                                                      sectionsSpace: 1,
                                                      centerSpaceRadius: 30,
                                                      sections: [
                                                        PieChartSectionData(
                                                          color:
                                                              const Color.fromARGB(
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
                                                              const Color.fromARGB(
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
                                                              const Color.fromARGB(
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
                                                              const Color.fromARGB(
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
                                              const SizedBox(height: 80),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 15,
                                                      width: 15,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            const Color.fromARGB(
                                                              255,
                                                              240,
                                                              75,
                                                              63,
                                                            ),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        '5',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 15,
                                                      width: 15,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            const Color.fromARGB(
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
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        '10',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 15,
                                                      width: 15,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            const Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153,
                                                            ),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        '22',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 15,
                                                      width: 15,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            const Color.fromARGB(
                                                              255,
                                                              94,
                                                              204,
                                                              98,
                                                            ),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        '45',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 50,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 15,
                                                      width: 15,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            const Color.fromARGB(
                                                              255,
                                                              224,
                                                              64,
                                                              117,
                                                            ),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        'STD/STI 1',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20,
                                                      ),
                                                      child: Text(
                                                        '14',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'OpenSansLight',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
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
          ],
        ),
      ),
    );
  }
}
