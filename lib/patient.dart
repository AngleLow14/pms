import 'package:flutter/material.dart';
import 'package:pms/appointment.dart';
import 'package:pms/detail.dart';
import 'package:pms/main.dart';
import 'package:pms/dashboard.dart';

class Patients extends StatelessWidget {
  const Patients({super.key});
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
                        width: 300,
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
                            Padding(
                              padding: EdgeInsets.only(left: 4, top: 15.5),
                              child: SizedBox(
                                height: 35,
                                width: 150,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Dashboard(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Dashboard',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'OpenSansLight',
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 43, 43, 43),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 95, top: 10),
                              child: SizedBox(
                                height: 35,
                                width: 150,
                                child: const Text(
                                  'Patients',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 252, 98, 98),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: SizedBox(
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
                            ),
                            const SizedBox(height: 130),
                            SizedBox(
                              height: 35,
                              width: 130,
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
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
                  Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 245, 245),
                        height: MediaQuery.of(context).size.height,
                        width: 1010,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40, top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: Text(
                                      'Patients',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 300, top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: 300,
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
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: SizedBox(
                                width: 800,
                                height: 400,
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
    );
  }
}
