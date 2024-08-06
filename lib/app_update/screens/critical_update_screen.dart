import 'package:app_update/app_update/common_widgets/image_constants.dart';
import 'package:app_update/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CriticalUpdateScreen extends StatefulWidget {
  String? appUpdateImage;
  String? appUpdateTitle;
  String? appUpdateDescription;
  void Function()? onUpdateButtonTap;
  void Function()? onRecommendedTap;
  String? onRecommendedText;
  CriticalUpdateScreen({
    super.key,
    this.appUpdateImage,
    this.appUpdateTitle,
    this.appUpdateDescription,
    this.onUpdateButtonTap,
    this.onRecommendedTap,
    this.onRecommendedText,
  });

  @override
  State<CriticalUpdateScreen> createState() => _CriticalUpdateScreenState();
}

class _CriticalUpdateScreenState extends State<CriticalUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.125,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage(
                      widget.appUpdateImage ?? UPDATE_GIF_IMAGE,
                    ),
                    height: MediaQuery.of(context).size.width * 0.65,
                    width: MediaQuery.of(context).size.width * 0.65,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  widget.appUpdateTitle ?? "",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                Text(
                  widget.appUpdateDescription ?? "",
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Color.fromRGBO(164, 164, 164, 1)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                ElevatedButton(
                  onPressed: widget.onUpdateButtonTap,
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Color.fromRGBO(55, 71, 79, 1),
                    foregroundColor: Color.fromRGBO(55, 71, 79, 1),
                    minimumSize: Size(250, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(6)), // Rectangular corners
                    ),
                    shadowColor: Color.fromRGBO(55, 71, 79, 1).withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12), // Adjust padding as needed
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.update_btn_text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GestureDetector(
                  onTap: widget.onRecommendedTap,
                  child: Text(
                    widget.onRecommendedText ?? "",
                    style: const TextStyle(
                        color: Color.fromRGBO(255, 201, 24, 1), fontSize: 14),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
