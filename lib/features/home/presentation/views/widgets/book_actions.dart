import 'package:bookly_app/core/widgets/custom_bottom.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, this.book});
  final Item? book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8, left: 40),
      child: Row(
        children: [
          CustomBottom(
            text: S.of(context).for_free,
            BackgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 20,
            fontweight: FontWeight.bold,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomBottom(
            onPressed: () async {
              final previewLink = book?.volumeInfo?.previewLink?.replaceFirst(
                'http://',
                'https://',
              );
              print('previewLink: $previewLink');
              if (previewLink != null) {
                final url = Uri.parse(previewLink);
                await launchUrl(url, mode: LaunchMode.externalApplication);
              }
            },
            text: S.of(context).preview,
            BackgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            fontSize: 20,
            fontweight: FontWeight.bold,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
