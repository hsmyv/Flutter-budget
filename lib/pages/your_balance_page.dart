import 'package:budget/theme/colors.dart';
import 'package:flutter/material.dart';

class YourBalancePage extends StatefulWidget {
  const YourBalancePage({super.key});

  @override
  State<YourBalancePage> createState() => _YourBalancePageState();
}

class _YourBalancePageState extends State<YourBalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: black,
          size: 22,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15),
          child: Text(
            "Set budget",
            style: TextStyle(
                color: primary, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          getBalance(),
        ],
      ),
    );
  }

  Widget getBalance() {
    return Center(
      child: Column(
        children: [
          Text(
            "Your balance is \$1,752",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "By this time last month, you spent\n slightly higher (\$2,450)",
            style: TextStyle(fontSize: 14, height: 1.6),
          )
        ],
      ),
    );
  }
}
