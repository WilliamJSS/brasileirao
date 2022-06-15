import 'package:brasileirao/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: HomeController.tabela.length,
        itemBuilder: (ctx, index) {
          final tabela = HomeController.tabela;
          return ListTile(
            leading: Image.network(tabela[index].brasao),
            title: (Text(tabela[index].nome)),
            trailing: (Text(tabela[index].pontos.toString())),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
          );
        },
        separatorBuilder: (ctx, index) => const Divider(),
      ),
    );
  }
}
