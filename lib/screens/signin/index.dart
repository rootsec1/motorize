import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:motorize/components/filled_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        title: Text(
          'Continue with Phone',
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.bodyText1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/otp_received.json'),
            Text(
              'You\'ll receieve a verification code in the next 30 seconds.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              maxLengthEnforced: true,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                labelText: 'Phone number',
                border: OutlineInputBorder(),
              ),
            ),
            Expanded(child: Container()),
            FilledButton(
              text: 'Continue',
              onPress: () {},
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
