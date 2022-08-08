// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        elevation: 2,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              ClipOval(
                child: Icon(
                  Icons.person,
                  size: 24,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'hallo wahyu',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'wahyu ningrat',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ))
            ],
          ),
        )),
      );
    }

    Widget MenuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            )
          ],
        ),
      );
    }

    Widget conten() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
              ),
              MenuItem('Edit Profile'),
              MenuItem('Your Order'),
              MenuItem('help'),
              SizedBox(
                height: 30,
              ),
              Text(
                'General',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              MenuItem('Privacy & Service'),
              MenuItem('Team Of Service'),
              MenuItem('Rote App'),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        conten(),
      ],
    );
  }
}
