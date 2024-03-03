import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: 'Item name', hint: 'Type item name')),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item amount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textButton: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0XFF4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(textButton: 'Send Money'),
            ),
          ],
        ),
      ],
    );
  }
}
