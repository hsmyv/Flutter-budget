import 'package:budget/theme/colors.dart';
import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  Promo({super.key});

  final String title = 'Promo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomPromoButton(
                  title: title,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomPromoButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CustomPromoButton extends StatelessWidget {
  const CustomPromoButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: red, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: white)),
      ),
    );
  }
}
