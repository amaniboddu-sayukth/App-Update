import 'package:app_update/app_update/common_widgets/image_constants.dart';
import 'package:app_update/app_update/screens/critical_update_screen.dart';
import 'package:app_update/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Duplicate extends StatefulWidget {
  const Duplicate({super.key});

  @override
  State<Duplicate> createState() => _DuplicateState();
}

class _DuplicateState extends State<Duplicate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                print("Screen called");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CriticalUpdateScreen(
                      appUpdateImage: UPDATE_GIF_IMAGE,
                      appUpdateTitle:
                          AppLocalizations.of(context)!.new_update_available,
                      appUpdateDescription: AppLocalizations.of(context)!
                          .critical_update_description,
                      onUpdateButtonTap: () {
                        print("Button clicked");
                      },
                      onRecommendedText: AppLocalizations.of(context)!
                          .critical_recommended_text,
                      onRecommendedTap: () {
                        print("Hyperlink called");
                      },
                    ),
                  ),
                );

                print(" After Screen called");
              },
              child: const Text("Critical Update")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CriticalUpdateScreen(
                      appUpdateImage: UPDATE_GIF_IMAGE,
                      appUpdateTitle:
                          AppLocalizations.of(context)!.new_update_available,
                      appUpdateDescription: AppLocalizations.of(context)!
                          .optional_update_description,
                      onUpdateButtonTap: () {
                        print("Button clicked");
                      },
                      onRecommendedText: AppLocalizations.of(context)!
                          .optional_recommended_text,
                      onRecommendedTap: () {
                        print("Hyperlink called");
                      },
                    ),
                  ),
                );
              },
              child: const Text("Optional Update"))
        ],
      ),
    );
  }
}
