import 'package:flutter/cupertino.dart';

import '../../../../core/style/text_style.dart';

class PersonalizationTextWidgets {
  static Widget personalizationTitle() {
    return Row(
      children: [
        Text(
          "Personalize Suggestion",
          style: AppTextStyle.loginTitleMedium2,
        ),
        const Spacer(),
      ],
    );
  }

  static Widget personalizationSubtitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Choose ",
          style: AppTextStyle.personalizationSubtitleSmall,
        ),
        Text(
          "min. 3 topic ",
          style: AppTextStyle.personalizationEndTwoTitleMedium,
        ),
        Text(
          "you like, we will give",
          style: AppTextStyle.personalizationSubtitleSmall,
        ),
      ],
    );
  }

  static Widget personalizationSubtitle2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "you more often that relate to it.",
          style: AppTextStyle.personalizationSubtitleSmall,
        ),
      ],
    );
  }
}
