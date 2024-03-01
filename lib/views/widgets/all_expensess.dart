import 'package:flutter/material.dart';
import 'all_expensess_header.dart';
import 'all_expnesess_list.dart';
import 'custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpnesessList(),
        ],
      ),
    );
  }
}
