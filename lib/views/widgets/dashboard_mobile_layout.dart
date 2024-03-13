import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_and_quick_invocie_section.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvocieSection(),
          SizedBox(height: 24),
          MyCardsAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
