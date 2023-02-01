import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(id: 't1', title: 'Novo tênis', value: 310.25, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta Luz', value: 115.87, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm()
      ],
    );
  }
}