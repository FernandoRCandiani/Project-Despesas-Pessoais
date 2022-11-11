import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Conta de Luz',
      value: 100.00,
      date: DateTime.now(),
    ),
  ];

  _addTransation(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransationForm(_addTransation),
        TransactionList(_transaction),
      ],
    );
  }
}
