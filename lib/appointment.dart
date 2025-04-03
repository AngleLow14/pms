import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';
import 'package:pms/main.dart';
import 'package:pms/patient.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});
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
                            const SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
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
                              padding: EdgeInsets.only(top: 5),
                              child: SizedBox(
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
                                      fontFamily: 'OpenSansLight',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 43, 43, 43),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 55, top: 8),
                              child: SizedBox(
                                height: 35,
                                width: 150,
                                child: const Text(
                                  'Appointment',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                      255,
                                      252,
                                      98,
                                      98,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 127),
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
                                  padding: EdgeInsets.only(left: 40, top: 40),
                                  child: SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: Text(
                                      'Appointment',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 300, top: 40),
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
                              padding: EdgeInsets.only(),
                              child: SizedBox(
                                width: 910,
                                height: 500,
                                child: Table(
                                  border: TableBorder.all(color: Colors.black),
                                  columnWidths: {
                                    0: FixedColumnWidth(100.0),
                                    1: FixedColumnWidth(200.0),
                                    2: FixedColumnWidth(100.0),
                                    3: FixedColumnWidth(100.0),
                                    4: FixedColumnWidth(100.0),
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
                                            'Appointment',
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
                                            'Date',
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
                                            'New Patient',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'New Patient',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'Follow Up',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'New Patient',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'New Patient',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'Follow Up',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'New Patient',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
                                                ),
                                              ),
                                            ],
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
                                            'Follow Up',
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
                                            '11-03-2024',
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
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.check,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  92,
                                                  230,
                                                  97,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                                height: 10,
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 30.0,
                                                color: const Color.fromARGB(
                                                  255,
                                                  226,
                                                  78,
                                                  78,
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
