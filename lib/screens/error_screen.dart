import 'package:flutter/material.dart';
import 'package:local_restaurant/const.dart';

class ErrorScreen extends StatelessWidget {
  static const routeName = '/error/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/404.png',
              width: 300,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Ups salah alamat!',
              style: interText2.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              'Ada masalah nih\nsama yang develop aplikasinya!',
              textAlign: TextAlign.center,
              style: interText,
            ),
            SizedBox(height: 50),
            Container(
              width: 210,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: kButtonColor,
                child: Text(
                  'Kembali',
                  style:
                      interText2.copyWith(color: Colors.white, fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
