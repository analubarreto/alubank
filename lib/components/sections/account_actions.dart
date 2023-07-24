import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Ações da conta', style: Theme.of(context).textTheme.titleMedium,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){}, child: const BoxCard(boxContent: _AccountAction(icon: Icons.account_balance_wallet, title: 'Depositar',),)),
              InkWell(onTap: (){}, child: const BoxCard(boxContent: _AccountAction(icon: Icons.cached, title: 'Transferir',),)),
              InkWell(onTap: (){}, child: const BoxCard(boxContent: _AccountAction(icon: Icons.center_focus_strong, title: 'Ler',),)),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountAction extends StatelessWidget {
  final IconData icon;
  final String title;

  const _AccountAction({ required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Icon(icon),
          ),
          Text(title, style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}

