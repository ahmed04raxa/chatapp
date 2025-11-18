import 'package:chatapp_ui/domain/constants/cubits/theme_cubit.dart';
import 'package:chatapp_ui/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          BlocProvider.of<ThemeCubit>(context).toggleTheme();
        }, icon: Icon(Icons.dark_mode))
      ],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgUrl: "onboarding.png"),
            SizedBox(height: 20),
            UiHelper.customText(
              context: context,
              text: "Connect easily with",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
            UiHelper.customText(
              context: context,
              text: "your family and friends",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
            UiHelper.customText(
              context: context,
              text: "over countries",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        text: "Start Messaging",
        callback: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
