import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotfy2/common/widgets/button/basic_app_button.dart';
import 'package:spotfy2/core/configs/assets/app_images.dart';
import 'package:spotfy2/core/configs/assets/app_vectors.dart';
import 'package:spotfy2/core/configs/theme/app_colors.dart';
import 'package:spotfy2/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModelPage extends StatelessWidget {
  const ChooseModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModelBG),
              ),
            ),
          ),

          Container(color: Colors.black.withOpacity(0.15)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.dark,
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff30393c).withOpacity(0.5),
                            ),
                            child: SvgPicture.asset(
                              AppVectors.moon,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 17),
                        Text(
                          "Dark Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.light,
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff30393c).withOpacity(0.5),
                            ),
                            child: SvgPicture.asset(
                              AppVectors.sun,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 17),
                        Text(
                          "Light Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseModelPage(),
                      ),
                    );
                  },
                  title: "Continue",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
