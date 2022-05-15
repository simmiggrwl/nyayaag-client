import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';
import 'package:nyayaag_client/screen/registerpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget(
        appBar: AppBar(),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 176, 198, 146)),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'NYAYAAG',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 85,
                        letterSpacing:
                            5 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                  const Text(
                    'VOICE OF JUSTICE',
                    style: TextStyle(
                        color: Color.fromRGBO(70, 146, 15, 1),
                        fontFamily: 'Roboto',
                        fontSize: 35,
                        letterSpacing:
                            3 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                        ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Lawyers and law students,  \nwelcome to the modern  \ndigital legal world',
                            style: TextStyle(
                                color: Color.fromRGBO(14, 84, 14, 1),
                                fontFamily: 'Roboto',
                                fontSize: 30,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          ),
                          const SizedBox(height: 25),
                          ElevatedButton(
                              child: const Text(
                                'Register',
                                style: TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const RegisterPage(
                                          title: 'Nyayaag - Register')),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF46920F),
                                  padding: const EdgeInsets.all(20.0))),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 1,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(70, 146, 15, 1),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          const Text(
                            '  Citizens, find an  \n  advocate and get  \n  free appointment!',
                            style: TextStyle(
                                color: Color.fromRGBO(14, 84, 14, 1),
                                fontFamily: 'Roboto',
                                fontSize: 30,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          ),
                          const SizedBox(height: 25),
                          ElevatedButton(
                              child: const Text(
                                'Register',
                                style: TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const RegisterPage(
                                          title: 'Nyayaag - Register')),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF46920F),
                                  padding: const EdgeInsets.all(20.0))),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 0,
              child: Container(
                child: Image.asset(
                  'logo/justicelogo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
      bottomSheet: const NyayaagFooterWidget(),
    );
  }
}
