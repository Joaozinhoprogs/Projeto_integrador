import 'package:flutter/material.dart';

class HistoricoPage extends StatelessWidget {
  final List<Map<String, dynamic>> historico = [
    {
      'data': '10/04/2025',
      'total': 40.0,
      'itens': [
        {'nome': 'Produto A', 'quantidade': 1, 'preco': 10.0},
        {'nome': 'Produto B', 'quantidade': 1, 'preco': 30.0},
      ]
    },
    {
      'data': '05/04/2025',
      'total': 25.0,
      'itens': [
        {'nome': 'Produto C', 'quantidade': 1, 'preco': 25.0},
      ]
    },
  ];

   HistoricoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Compras')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: historico.map((pedido) => ExpansionTile(
            title: Text('Pedido em ${pedido['data']} - Total: R\$ ${pedido['total'].toStringAsFixed(2)}'),
            children: (pedido['itens'] as List).map((item) => ListTile(
              title: Text(item['nome']),
              subtitle: Text('Qtd: ${item['quantidade']}'),
              trailing: Text('R\$ ${(item['quantidade'] * item['preco']).toStringAsFixed(2)}'),
            )).toList(),
          )).toList(),
        ),
      ),
    );
  }
}