import 'package:firstmockup/theme/app_color.dart';
import 'package:firstmockup/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/moneybutton.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.backgroud,
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
                    child: Text(
                      'Get your Money Under Control',
                      /*style: TextStyle(
                          color: AppColor.textWhite,
                          fontSize: 40,
                        ),*/
                      style: GoogleFonts.getFont(
                        'Roboto',
                        textStyle: const TextStyle(
                          color: AppColor.textWhite,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 25),
                    child: Text(
                      'Manage you expenses Seamlessly',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        textStyle: const TextStyle(
                          color: AppColor.textGray,
                          fontSize: 21,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
              child: TextButton(
                onPressed: () {},
                style: AppTheme.flatButtonStyleBlue,
                child: Text(
                  'Sign Up with Email ID',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    textStyle: const TextStyle(
                      color: AppColor.textWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: MoneyButton(
                buttonLabel: 'Sign Up with Email ID',
                imagemAssetIcon: 'assets/images/icons8-google-logo-48.png',
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Already have an account? ',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    textStyle: const TextStyle(
                      color: AppColor.textGray,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        textStyle: const TextStyle(
                          color: AppColor.textWhite,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
