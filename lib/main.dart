import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(title: 'Home Page'));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(),
              TitleSection(
                  name: 'Seschinen Lake Campgrounf',
                  location: 'Kandersteg, Swizerland'),
              ButtonSection(),
              TextSection(
                  text:
                      "tsdihulh.zdfhiin/lv/kljn/vck.jbn DevTools now shows you original variable names instead of minified across the Console, conditional breakpoints and logpoints, watch expressions, live expressions, and more")
            ],
          ),
        ));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                location,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          )),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
        ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
        ButtonWithText(color: color, icon: Icons.share, label: 'SHARE')
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText(
      {super.key,
      required this.color,
      required this.icon,
      required this.label});
  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        Text(label, style: TextStyle(color: color))
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(children: [Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(text),
    )]);
  }
}
class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.minPositive,
          height: 200,
          child: Image.asset(
            'assets/images/dino-reichmuth-5Rhl-kSRydQ-unsplash.jpg',
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
