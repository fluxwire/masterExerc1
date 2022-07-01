import 'package:firstmockup/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'components/tinderbutton.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientarion = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColor.tinderBackgroundStart,
              AppColor.tinderBackgroundFinish
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              heightFactor: Orientation.portrait == orientarion ? 14 : 5,
              child: SizedBox(
                height: 35,
                child: Image.asset(
                  'assets/images/logo_tinder.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 25),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text:
                          'By tapping Create Account or Sign In, you agree to Terms. Ler how twe process your data in our ',
                      style: TextStyle(
                        color: AppColor.tinderText,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: AppColor.tinderText,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: AppColor.tinderText,
                          ),
                        ),
                        TextSpan(
                          text: 'Cookies Policy',
                          style: TextStyle(
                            color: AppColor.tinderText,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TinderButton(
                    onPressed: () {},
                    buttonLabel: 'SIGN IN WITH APPLE',
                    imagemAssetIcon: 'assets/images/logo_apple.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TinderButton(
                    onPressed: () {},
                    buttonLabel: 'SIGN IN WITH FACEBOOK',
                    imagemAssetIcon: 'assets/images/logo_facebook.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TinderButton(
                    onPressed: () {},
                    buttonLabel: 'SIGN IN WITH PHONE NUMBER',
                    imagemAssetIcon: 'assets/images/bubble.png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                  child: Center(
                    child: Text('Trouble Signing In?',
                        style: TextStyle(
                          color: AppColor.tinderText,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
