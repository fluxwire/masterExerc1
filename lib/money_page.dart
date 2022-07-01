import 'package:firstmockup/theme/app_color.dart';
import 'package:firstmockup/theme/theme.dart';
import 'package:flutter/material.dart';

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
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 35, 15),
                      child: Text(
                        'Get your Money Under Control',
                        style: TextStyle(
                          color: AppColor.textWhite,
                          fontSize: 40,
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
                children: const [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 25),
                      child: Text(
                        'Manager you expenses Seamlessly',
                        style: TextStyle(
                          color: AppColor.textGray,
                          fontSize: 20,
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
                  child: const Text(
                    'Sign Up with Email ID',
                    style: TextStyle(
                      color: AppColor.textWhite,
                      fontSize: 16,
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
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      color: AppColor.textGray,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: AppColor.textWhite,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
          //   Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [

          //   ],
          // ),
          ),
    );
  }
}
