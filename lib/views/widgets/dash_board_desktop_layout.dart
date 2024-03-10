import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'all_expensess_and_quick_invocie_section.dart';
import 'my_card_sections.dart';

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
        Expanded(child: MyCardsSection()),
        SizedBox(width: 24),
      ],
    );
  }
}
