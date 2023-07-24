import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Pontos da conta', style: Theme.of(context).textTheme.titleMedium,),
          ),
          const BoxCard(
            boxContent: _AccountPoints(),
          )
        ],
      )
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Pontos totais:'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
          ),
          const ContentDivision(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Objetivos', style: Theme.of(context).textTheme.titleMedium,),
          ),
           const Row(
            children: [
              ColorDot(color: Colors.pink,),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Entrega grátis: 150000 pts'),
              )
            ],
          ),
         const Row(
            children: [
              ColorDot(color: Colors.blue,),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('1 mês de streaming: 300000 pts'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
