import 'package:flutter/material.dart';

class UserInformationColumnWidget extends StatelessWidget {
  const UserInformationColumnWidget({
    Key? key,
    required this.userEmail,
    required this.userPicture,
    this.userName,
  }) : super(key: key);

  final Widget userEmail;
  final ImageProvider userPicture;
  final Widget? userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: Colors.grey,
          backgroundImage: userPicture,
        ),
        const SizedBox(height: 5),
        if (userName != null)
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            child: userName!,
          ),
        const SizedBox(height: 5),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white70,
          ),
          child: userEmail,
        ),
      ],
    );
  }
}
