import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'It\'s a UNIX system, I know this.',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: DevRoot(),
    );
  }
}

class DevRoot extends StatefulWidget {
  @override
  _DevRootState createState() => _DevRootState();
}

class _DevRootState extends State<DevRoot> {
  bool _isFinished = false;
  final List<Widget> _resultsWidgets = [
    const SizedBox(height: 10),
    Text(
      'FinishedProjects/',
      style: GoogleFonts.robotoMono(color: Colors.green),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/mjcastner/edsm_bq'));
      },
      child: Text(
        '    edsm_bq',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse(
            'https://colab.research.google.com/drive/1VH3m-7zuCURVVf4p1ExRCd7rNs4AFeDG?usp=sharing'));
      },
      child: Text(
        '    edsm_bq_colab',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/mjcastner/jira_to_github'));
      },
      child: Text(
        '    jira_to_github',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/kiera-dev/tarot'));
      },
      child: Text(
        '    tarot_flutter',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://tarot.mjcastner.dev/'));
      },
      child: Text(
        '    tarot_flutter_demo',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    const SizedBox(height: 5),
    Text(
      'InProgressProjects/',
      style: GoogleFonts.robotoMono(color: Colors.green),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/mjcastner/go-home'));
      },
      child: Text(
        '    go-home',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/mjcastner/zunify'));
      },
      child: Text(
        '    zunify',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    const SizedBox(height: 5),
    Text(
      'NeatStuffIveWorkedOn/',
      style: GoogleFonts.robotoMono(color: Colors.green),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://android.com'));
      },
      child: Text(
        '    android',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://fuchsia.dev'));
      },
      child: Text(
        '    fuchsia',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://github.com/apps/github-learning-lab'));
      },
      child: Text(
        '    learning_lab',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://safebrowsing.google.com/'));
      },
      child: Text(
        '    safe_browsing',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://cloud.google.com/spanner/'));
      },
      child: Text(
        '    spanner',
        style: GoogleFonts.robotoMono(color: Colors.green),
      ),
    ),
    // const SizedBox(height: 5),
    // Text(
    //   'resume.pdf',
    //   style: GoogleFonts.robotoMono(color: Colors.green),
    // ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'guest@mjcastner.dev ~ % ',
                  style: GoogleFonts.robotoMono(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AnimatedTextKit(
                  onFinished: () {
                    setState(() {
                      _isFinished = true;
                    });
                  },
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'ls -1',
                      speed: const Duration(milliseconds: 100),
                      textStyle: GoogleFonts.robotoMono(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _isFinished ? _resultsWidgets : [],
            ),
          ],
        ),
      ),
    );
  }
}
