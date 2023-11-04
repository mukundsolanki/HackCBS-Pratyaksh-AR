import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context); // Close the bottom sheet
                      },
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Sync with AR Glasses',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  // child: SvgPicture.asset(
                  //   'assets/ar_glasses_upload.svg',
                  //   height: 225,
                  // ),
                  child: Lottie.asset(
                    'animations/animation_lo4rog07.json',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12),
                SlideAction(
                  text: 'Slide to Sync!',
                  sliderRotate: false,
                  onSubmit: () {
                    // print("Swiped");
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
