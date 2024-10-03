import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSaldoConta(),
            const SizedBox(height: 30),
            _buildAcoesPrincipais(),
            const SizedBox(height: 30),
            _buildCardSections(),  
            const SizedBox(height: 30),
            _buildCartaoCredito(),
            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 30),
            _buildEmprestimo(),
            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 30),
            _buildDescubraMais(),
          ],
        ),
      ),
    );
  }

  Widget _buildSaldoConta() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Conta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text("R\$1000,00", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildAcoesPrincipais() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIconButton("Área Pix", Icons.pix),
        _buildIconButton("Pagamentos", Icons.money),
        _buildIconButton("QRCode", Icons.qr_code),
        _buildIconButton("Transferir", Icons.attach_money),
      ],
    );
  }

  Widget _buildIconButton(String text, IconData icon) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: const Color(0xFF8A05BE)),
          onPressed: () {},
        ),
        Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildCardSections() {
    return const Column(
      children: [
        Card(
          color: Color(0xFFF5F5F5),
          child: ListTile(
            leading: Icon(Icons.credit_card, color: Color(0xFF8A05BE)),
            title: Text(
              "Meus Cartões",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 10),
        Card(
          color: Color(0xFFF5F5F5),
          child: ListTile(
            title: Text(
              "Guarde seu dinheiro em caixinhas",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF8A05BE)),
            ),
            subtitle: Text("Acessando a área de planejamento"),
          ),
        ),
      ],
    );
  }

  Widget _buildCartaoCredito() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Cartão de Crédito", style: TextStyle(fontSize: 24)),
        const SizedBox(height: 10),
        const Text("Fatura Fechada", style: TextStyle(fontSize: 18, color: Colors.black54)),
        const SizedBox(height: 10),
        const Text("R\$2.123,39", style: TextStyle(fontSize: 24)),
        const SizedBox(height: 15),
        const Text("Vencimento dia 15", style: TextStyle(fontSize: 18, color: Colors.black54)),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Renegociar", style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }

  Widget _buildEmprestimo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Empréstimo", style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        Text("Tudo certo! Você está em dia", style: TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget _buildDescubraMais() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Descubra Mais", style: TextStyle(fontSize: 24)),
        const SizedBox(height: 10),
        _buildSeguroVidaCard(),
      ],
    );
  }

  Widget _buildSeguroVidaCard() {
    return Card(
      child: Column(
        children: [
          
          Image.asset(
            'assets/seguro_vida.jpg',
            width: 500,  
            height: 220,  
            fit: BoxFit.cover,  
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Seguro de Vida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text("Cuide bem de quem você ama de um jeito simples", style: TextStyle(fontSize: 18, color: Colors.black54)),
                const SizedBox(height: 10),
                ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8A05BE), 
            foregroundColor: Colors.white, 
            ),
            child: const Text("Conhecer", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

