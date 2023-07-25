import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyCardPage(),
    );
  }
}

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    const avatar = CircleAvatar(
      radius: 56,
      backgroundColor: Colors.white60,
      backgroundImage: AssetImage('assets/images/person1.jpeg'),
    );

    const name = Text(
      'Jairo Rocano Ponce',
      style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'Borel'),
    );

    const jobTitle = Text(
      'FLUTTER DEVELOPER',
      style: TextStyle(
        color: Colors.white70,
        fontSize: 15,
        letterSpacing: 2,
        fontWeight: FontWeight.w400,
      ),
    );

    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            avatar,
            SizedBox(height: 20),
            name,
            jobTitle,
            SizedBox(
              width: 170,
              child: Divider(
                color: Colors.white24,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
            ),
            ContactCard(
              icon: Icons.phone,
              primaryText: '+51 962 072 174',
              secondaryText: 'Teléfono',
            ),
            ContactCard(
              icon: Icons.email,
              primaryText: 'jairo.rocano@gmail.com',
              secondaryText: 'Email',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MediaSocialIcons(image: 'assets/images/facebook.png'),
                SizedBox(width: 25),
                MediaSocialIcons(image: 'assets/images/instagram.png'),
                SizedBox(width: 25),
                MediaSocialIcons(image: 'assets/images/twitter.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MediaSocialIcons extends StatelessWidget {
  const MediaSocialIcons({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 60,
      color: Colors.white,
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.icon,
    required this.primaryText,
    required this.secondaryText,
  }) : super(key: key);

  final IconData icon;
  final String primaryText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      elevation: 10,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.indigo,
        ),
        title: Text(primaryText),
        subtitle: Text(secondaryText),
        trailing: const Icon(Icons.check_circle_outline, color: Colors.indigo),
      ),
    );
  }
}
