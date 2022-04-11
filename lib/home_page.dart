import 'package:flutter/material.dart';
import 'package:nyayaag_client/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('supremecourt.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('highcourt.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('districtcourt.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('lowercourt.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
          const SizedBox(height: 40),
          ElevatedButton(
              child: const Text('Consult Expert',
                  style: TextStyle(fontSize: 20.0)),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, padding: const EdgeInsets.all(20.0))),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('propertypersonal.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('intellectual.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngo.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('business.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('govtsubsidy.png'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
          const SizedBox(height: 40),
          ElevatedButton(
              child: const Text('Consult Expert',
                  style: TextStyle(fontSize: 20.0)),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, padding: const EdgeInsets.all(20.0))),
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
                        style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Terms & Conditions',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Site Map', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Contact Us', style: TextStyle(color: Colors.white))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
