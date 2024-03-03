import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';
import 'all_expensess_and_quick_invocie_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: AllExpensessAndQuickInvocieSection(),
        ),
        SizedBox(width: 24),
        Expanded(child: MyCard()),
        SizedBox(width: 24),
      ],
    );
  }
}
