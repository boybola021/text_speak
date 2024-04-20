import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_speak/view/pages/setting_page.dart';
import 'package:text_speak/view/pages/sos_page.dart';
import 'package:text_speak/view/widgets/main_button.dart';

import 'futures/speech.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const SettingPage(),
                          ),
                        );
                      },
                      backgroundColor: Colors.cyanAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        CupertinoIcons.settings,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                "CEREBRO",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 20,
              ),
              MainButton(
                text: "SPEAK",
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => const SpeechPage(),),);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MainButton(
                text: "SEE",
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              MainButton(
                text: "HEAR",
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              MainButton(
                text: "SOS",
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const SosPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
