import 'package:flutter/material.dart';
import 'package:nyayaag_client/responsive.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

class GovtSubsidyPage extends StatefulWidget {
  const GovtSubsidyPage({Key? key}) : super(key: key);

  @override
  State<GovtSubsidyPage> createState() => _GovtSubsidyPageState();
}

class _GovtSubsidyPageState extends State<GovtSubsidyPage> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        appBar: NyayaagAppBarWidget(
          appBar: AppBar(),
        ),
        backgroundColor: Color.fromARGB(255, 176, 198, 146),
        body: SingleChildScrollView(
          child: Responsive(
            mobile: _mobileBody(),
            tablet: _tabletBody(),
            desktop: _desktopBody(),
          ),
        ),
        bottomSheet: const NyayaagFooterWidget(),
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
          const Text('GOVT SUBSIDY CASES',
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
                                  image: AssetImage(
                                      'govt_subsidy/supremecourt1.jpg'),
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
                              'UYEGP',
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
                                  image:
                                      AssetImage('govt_subsidy/highcourt1.jpg'),
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
                              'PMEGP',
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
                                  image: AssetImage(
                                      'govt_subsidy/districtcourt1.jpg'),
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
                              'Needs',
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
                                  image: AssetImage(
                                      'govt_subsidy/lowercourt1.jpg'),
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
                              'Capital Subsidy',
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
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
