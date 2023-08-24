// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../utils/app_styles.dart';
//
// class ProfileApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfilePage(),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   void Function() _launchEmail = () async {
//     final Uri _emailLaunchUri = Uri(
//       scheme: 'mailto',
//       path: 'recipient@example.com',
//       queryParameters: {
//         'subject': 'Subject of the email',
//         'body': 'Body of the email',
//       },
//     );
//
//     if (await canLaunch(_emailLaunchUri.toString())) {
//       await launch(_emailLaunchUri.toString());
//     } else {
//       throw 'Could not launch email';
//     }
//   }
//   void _launchPhone() async {
//     final String phoneNumber = 'tel:+1234567890';
//
//     if (await canLaunch(phoneNumber)) {
//       await launch(phoneNumber);
//     } else {
//       throw 'Could not launch phone';
//     }
//   }
//   void _launchSMS() async {
//     final String phoneNumber = 'sms:+1234567890';
//     final String message = 'Hello, this is a pre-filled message.';
//
//     final Uri uri = Uri(scheme: 'sms', path: '+1234567890', queryParameters: {
//       'body': message,
//     });
//
//     if (await canLaunch(uri.toString())) {
//       await launch(uri.toString());
//     } else {
//       throw 'Could not launch SMS';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "Profile",
//             style: Styles.headLineStyle1,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             child: Image.network(
//               "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Free-Download.png",
//               width: 100,
//               height: 100,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Sumit Singh Rathore',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Flutter Developer/Frontend Web Developer',
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ActionButton(icon: Icons.email, label: 'Email' ,),
//               ActionButton(icon: Icons.phone, label: 'Call'),
//               ActionButton(icon: Icons.message, label: 'Message'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ActionButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//
//   ActionButton({required this.icon, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         IconButton(
//           icon: Icon(icon),
//           onPressed: () {
//
//             if(icon == Icons.mail){
//               _launchEmail();
//             }
//           },
//         ),
//         SizedBox(height: 5),
//         Text(label),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/app_styles.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Profile",
            style: Styles.headLineStyle1,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image.network(
              "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Free-Download.png",
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sumit Singh Rathore',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer/Frontend Web Developer',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionButton(
                icon: Icons.email,
                label: 'Email',
                onPressed: () => _launchEmail(context),
              ),
              ActionButton(
                icon: Icons.phone,
                label: 'Call',
                onPressed: () => _launchPhone(context),
              ),
              ActionButton(
                icon: Icons.message,
                label: 'Message',
                onPressed: () => _launchSMS(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchEmail(BuildContext context) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'sumitsinghrajput0325@gmail.com',
      queryParameters: {
        'subject': 'Subject of the email',
        'body': 'Body of the email',
      },
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  void _launchPhone(BuildContext context) async {
    final String phoneNumber = 'tel:9352834759';

    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch phone';
    }
  }

  void _launchSMS(BuildContext context) async {
    final String phoneNumber = 'sms:9352834759';
    final String message = 'Hello, this is a pre-filled message.';

    final Uri uri = Uri(
      scheme: 'sms',
      path: '9352834759',
      queryParameters: {
        'body': message,
      },
    );

    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch SMS';
    }
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  ActionButton({required this.icon, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

