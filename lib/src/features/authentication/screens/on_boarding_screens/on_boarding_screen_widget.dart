import 'package:flutter/material.dart';
import 'package:gamingapp/src/constants/colors.dart';
import 'package:gamingapp/src/constants/text_strings.dart';
import 'package:gamingapp/src/features/authentication/models/model_on_boarding.dart';

class onBoardingPageWidget extends StatelessWidget {
  const onBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: model.height * 0.28,
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                    color: gOnBordingTitle1clr1,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                model.subtitle,
                style: TextStyle(color: gOnBordingTitle1clr1, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image:
      //             AssetImage(Image.g),
      //         fit: BoxFit.cover)),
    );
  }
}
