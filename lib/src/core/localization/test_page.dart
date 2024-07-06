import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/localization/test_provider.dart';
import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TestProvider(service.read("til")),
      child: Consumer<TestProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: provider.til,
                    items: const [
                      DropdownMenuItem(
                        value: "1",
                        child: Row(
                          children: [Text("🇺🇿 O'zbek")],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "2",
                        child: Row(
                          children: [Text(" 🇬🇧 England")],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "3",
                        child: Row(
                          children: [Text(" 🇷🇺 Russ")],
                        ),
                      ),
                    ],
                    onChanged: provider.dropCall,
                  ),
                  Text("Error".tr),
                  MaterialButton(
                    onPressed: () {
                      provider.dropCall("1");
                    },
                    child: Text("🇺🇿 O'zbek"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      provider.dropCall("2");
                    },
                    child: Text("🇬🇧 England"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      provider.dropCall("3");
                    },
                    child: Text("🇷🇺 Russ"),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
