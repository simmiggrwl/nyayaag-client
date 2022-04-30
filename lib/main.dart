import 'package:flutter/material.dart';
import 'package:nyayaag_client/business_setup.dart';
import 'package:nyayaag_client/govt_subsidy.dart';
import 'package:nyayaag_client/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nyayyag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 240, 203),
        body: SingleChildScrollView(
          child: Responsive(
            mobile: _mobileBody(),
            tablet: _tabletBody(),
            desktop: _desktopBody(),
          ),
        ),
      ),
    );
  }

  Widget _tabletBody() {
    return const Center(
        child: Text('tablet ui will design later',
            style: TextStyle(color: Colors.white)));
  }

  Widget _mobileBody() {
    return const Center(
        child: Text('mobile ui will design later',
            style: TextStyle(color: Colors.white)));
  }

  Widget _desktopBody() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('LITIGATION CASES',
              style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('supremecourt1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Supreme Court Cases',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('highcourt1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'High Court Cases',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('districtcourt1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'District Court Cases',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('lowercourt1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Lower Court Cases',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          ElevatedButton(
              child: const Text('Consult Expert',
                  style: TextStyle(fontSize: 20.0)),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF46920F),
                  padding: const EdgeInsets.all(20.0))),
          const SizedBox(height: 50),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 200,
            endIndent: 200,
            color: Colors.grey,
          ),
          const SizedBox(height: 50),
          const Text('NON-LITIGATION CASES',
              style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('propertypersonal1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Property and Personal',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('intellectual1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Intellectual Property',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngo1.jpeg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'NGOs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BusinessSetupPage()),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('business1.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Business Setup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GovtSubsidyPage()),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('govtsubsidy1.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Government Subsidy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          ElevatedButton(
              child: const Text('Consult Expert',
                  style: TextStyle(fontSize: 20.0)),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF46920F),
                  padding: const EdgeInsets.all(20.0))),
          const SizedBox(height: 50),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 200,
            endIndent: 200,
            color: Colors.grey,
          ),
          const SizedBox(height: 50),
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('Privacy Policy',
                        style: TextStyle(color: Colors.white38, fontSize: 20)),
                    SizedBox(width: 50),
                    Text('Terms & Conditions',
                        style: TextStyle(color: Colors.white38, fontSize: 20)),
                    SizedBox(width: 50),
                    Text('Site Map',
                        style: TextStyle(color: Colors.white38, fontSize: 20)),
                    SizedBox(width: 50),
                    Text('Contact Us',
                        style: TextStyle(color: Colors.white38, fontSize: 20))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
