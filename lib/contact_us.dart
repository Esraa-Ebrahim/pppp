import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Us',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(10, 63, 79, 1.0), // Dark blue
        accentColor: Color.fromRGBO(202, 240, 248, 1.0), // Light blue
        cardColor: Color.fromRGBO(202, 240, 248, 1.0), //
      ),
      home: ContactUs(),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assetss/حضرني.png',
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Team Back-End',
              style: TextStyle(
                color: Color.fromRGBO(31, 122, 140, 1.0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ContactCard(
            name: 'Loaa Elsayed',
            role: 'Full Stack Developer',
            email: 'loaaelsayed6@gmail.com',
            linkedin: 'https://www.linkedin.com/in/loaa-el-sayed-061384222',
          ),
          ContactCard(
            name: 'Mohammed Wael',
            role: 'Full Stack Developer',
            email: 'mohamedwarl677@gmail.com',
            linkedin: 'https://www.linkedin.com/in/mohammed-wael-4b5470230',
          ),
          ContactCard(
            name: 'Mohamed Yasser',
            role: 'Full Stack Developer',
            email: 'mohamedaboyaser2012@gmail.com',
            linkedin: 'https://www.linkedin.com/in/mohamed-yaser-992472242',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {
              launch('https://github.com/LoaaElsayed/graduation_back');
            },
            child: Text(
              'Click to get Back-end code',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(31, 122, 140, 1.0),
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Team Front-End',
              style: TextStyle(
                color: Color.fromRGBO(31, 122, 140, 1.0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ContactCard(
            name: 'Esraa Elgdawy',
            role: 'Machine Learning Engineer & Content Creator',
            email: 'esraaelgdawy88@gmail.com',
            linkedin: 'https://www.linkedin.com/in/esraa-elgdawy-344b55194',
          ),
          ContactCard(
            name: 'Noran Ahmed',
            role: 'Data Analyst & Flutter Developer',
            email: 'noran.ahmed1421@gmail.com',
            linkedin: 'https://www.linkedin.com/in/noran-ahmed-179869269',
          ),
          ContactCard(
            name: 'Karim Mustafa',
            role: 'Data Analyst & Flutter Developer',
            email: 'Karim10112@gmail.com',
            linkedin:
                'https://www.linkedin.com/mwlite/in/karim-mostafa-4a251323b',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {
              launch('https://github.com/LoaaElsayed/graduation-flutter');
            },
            child: Text(
              'Click to get Front-end code',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(31, 122, 140, 1.0),
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String role;
  final String email;
  final String linkedin;

  const ContactCard({
    Key? key,
    required this.name,
    required this.role,
    required this.email,
    required this.linkedin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(202, 240, 248, 1.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        subtitle: Text(role),
        trailing: IconButton(
          icon: Icon(Icons.email),
          onPressed: () {
            final Uri _emailLaunchUri = Uri(
              scheme: 'mailto',
              path: email,
              queryParameters: {
                'subject': 'Regarding your profile on XYZ app',
                'body':
                    'Hello $name, \n\nI am writing to you regarding your profile on XYZ app. \n\nBest Regards, \n[Your Name]',
              },
            );
            launch(_emailLaunchUri.toString());
          },
        ),
        onTap: () {
          launch(linkedin);
        },
      ),
    );
  }
}
