import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  const ProductDetailScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(productName),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Descrição'),
              Tab(text: 'Avaliações'),
              Tab(text: 'Especificações'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Exibe conteúdo baseado no produto
            if (productName == 'Smartphone XYZ') ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/smartphone_xyz.png', height: 300),
                    const SizedBox(height: 16),
                    const Text(
                      'O Smartphone XYZ possui uma tela AMOLED de 6.5 polegadas, '
                      'processador octa-core, 128GB de armazenamento e câmera tripla de 48MP.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
            if (productName == 'Fones de Ouvido Bluetooth') ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/fone_de_ouvido.jpg', height: 300),
                    const SizedBox(height: 16),
                    const Text(
                      'Os Fones de Ouvido Bluetooth oferecem qualidade de som excepcional '
                      'com cancelamento de ruído ativo e até 20 horas de duração de bateria.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
            if (productName == 'Camiseta Algodão') ...[
              // Aba "Descrição" com Imagem da Camiseta
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/camiseta_algodao.jpg', height: 300),
                    const SizedBox(height: 16),
                    const Text(
                      'Camiseta de algodão 100%, confortável e ideal para o dia a dia. '
                      'Disponível em diversas cores.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
