import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const BoxCard(
        boxContent: _RecentActivity(),
      )
    );
  }
}

class _RecentActivity extends StatelessWidget {
  const _RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Text('\$ 9900,97', style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text('\$ 9680,00', style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Limite de gastos: \$432,90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ThemeColors.recentActivity['income'],
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: ContentDivision(),
        ),
        const Text('Esse mês você gastou \$ 1500,00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: const Text('Diga-me como!', style: TextStyle(fontSize: 16, color: Colors.pinkAccent)),
        ),
      ],
    );
  }
}
