import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotfy2/common/widgets/button/basic_app_button.dart';
import 'package:spotfy2/core/configs/assets/app_images.dart';
import 'package:spotfy2/core/configs/assets/app_vectors.dart';
import 'package:spotfy2/core/configs/theme/app_colors.dart';
import 'package:spotfy2/presentation/choose_mode/pages/choose_model.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
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
                  "Enjoy Listening To Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 20),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseModelPage(),
                      ),
                    );
                  },
                  title: "Get Started",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
