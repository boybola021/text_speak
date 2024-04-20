


import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        surfaceTintColor: Colors.blue.shade50,
        backgroundColor: Colors.blue.shade50,
        leadingWidth: 80,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            size: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
            "LANGUAGE",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: width < 391 ? 50 : 60),
          ),
            const SizedBox(height: 50,),
            /// us
            Center(
              child: IconButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 270,
                    child: Image.asset("assets/images/use.JPG",
                    fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            /// ru
            Center(
              child: IconButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 270,
                    child: Image.asset("assets/images/russian.webp",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            /// uz
            Center(
              child: IconButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 270,
                    child: Image.asset("assets/images/uzb.webp",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
