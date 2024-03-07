import 'package:flutter/material.dart';
import 'package:social_media_sign_in_buttons/social_media_sign_in_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media Sign In Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Social Media Sign In Buttons Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  final ButtonStyle buttonStyle = ButtonStyle(
    side: MaterialStatePropertyAll(
      BorderSide(
        color: Colors.white,
        width: 0,
      ),
    ),
    minimumSize: MaterialStatePropertyAll(Size(0, 0)),
    backgroundColor: MaterialStatePropertyAll(Colors.white),
    padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    ),
    fixedSize: MaterialStatePropertyAll(Size(100, 100)),
  );

  final double iconSide = 50;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GoogleIconMiniButton(
                    iconWidth: iconSide,
                    iconHeight: iconSide,
                    style: buttonStyle,
                    onPressed: () => print('Google'),
                  ),
                  _horizontalSpace(),
                  FacebookIconMiniButton(
                    iconWidth: iconSide,
                    iconHeight: iconSide,
                    style: buttonStyle,
                    onPressed: () => print('Facebook'),
                  ),
                  _horizontalSpace(),
                  AppleIconMiniButton(
                    iconWidth: iconSide,
                    iconHeight: iconSide,
                    style: buttonStyle,
                    onPressed: () => print('Apple'),
                  ),
                  _horizontalSpace(),
                  WhatsappIconMiniButton(
                    style: buttonStyle,
                    onPressed: () => print('Whatsapp'),
                  ),
                  _horizontalSpace(),
                  TelegramIconMiniButton(
                    style: buttonStyle,
                    onPressed: () => print('Telegram'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  SizedBox _horizontalSpace() => const SizedBox(width: 10);
}
