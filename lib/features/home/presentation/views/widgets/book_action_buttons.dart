import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/launch_my _url.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: CustomButton(
                buttonName: 'Free',
                textStyle: TextStyles.textStyle18.copyWith(fontWeight: FontWeight.w700, color: Colors.black,),
                buttonColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48,
              child: CustomButton(
                onPressed: () {
                  launchMyUrl(context, link: book.volumeInfo.previewLink!);
                },
                buttonName: 'Free preview',
                textStyle: TextStyles.textStyle16.copyWith(fontWeight: FontWeight.w700, fontFamily: "Gilroy", color: Colors.white),
                buttonColor: const Color(0xffEF8262),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
