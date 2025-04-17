import 'package:flutter/material.dart';

class CarrinhoPage extends StatelessWidget {
  final List<Map<String, dynamic>> carrinho = [
    {'nome': 'Produto A', 'quantidade': 2, 'preco': 10.0},
    {'nome': 'Produto B', 'quantidade': 1, 'preco': 20.0},
  ];

   CarrinhoPage({super.key});

  double calcularTotalCarrinho() {
    return carrinho.fold(
      0,
      (soma, item) => soma + (item['quantidade'] * item['preco']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...carrinho.map((item) => Card(
              child: ListTile(
                title: Text(item['nome']),
                subtitle: Text('Qtd: ${item['quantidade']}'),
                trailing: Text('R\$ ${(item['quantidade'] * item['preco']).toStringAsFixed(2)}'),
              ),
            )),
            const SizedBox(height: 10),
            Text('Total: R\$ ${calcularTotalCarrinho().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Finalizar Pedido'),
            ),
          ],
        ),
      ),
    );
  }
}