import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_speak/view/widgets/main_button.dart';

import 'language_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            size: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              "SETTINGS",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: width < 391 ? 50 : 60),
            ),
            const SizedBox(height: 50,),
            Center(
              child: MainButton(
                text: "Language",
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LanguagePage(),
                    ),
                  );
                },
                height: 150,
                width: 220,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: MainButton(
                text: "About Me",
                onPressed: () {},
                height: 150,
                width: 220,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
