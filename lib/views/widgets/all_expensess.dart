import 'package:flutter/material.dart';
import 'all_expensess_header.dart';
import 'all_expnesess_list.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpnesessList(),
        ],
      ),
    );
  }
}
