import 'package:flutter/material.dart';

// Função principal que inicializa o aplicativo Flutter
void main() {
  runApp(const MyApp());
}

// Classe principal do aplicativo, que é um widget sem estado (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// O método build constrói a interface do app
  @override
  Widget build(BuildContext context) {
    // O MaterialApp é o widget raiz que contém a estrutura básica de navegação e design material
    return const MaterialApp(
      home: HomeScreen(), // Define a HomeScreen como a tela inicial do app
    );
  }
}

// Define a tela principal do aplicativo
class HomeScreen extends StatelessWidget { 
  const HomeScreen({super.key});

// O método build constrói a interface da HomeScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Cria uma AppBar com ícones e botões
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE), // Define a cor de fundo da AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {}, // Ação quando o ícone é pressionado
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
            onPressed: () {}, // Ação quando o ícone é pressionado
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {}, // Ação quando o ícone é pressionado
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
          onPressed: () {}, // Ação quando o botão "leading" é pressionado
        ),
      ),
      
       // Corpo principal da tela
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espaçamento interno de 16 pixels em todos os lados
        child: ListView( // Lista de widgets que compõem o corpo da tela
          children: [
            _buildSaldoConta(), // Seção que exibe o saldo da conta
            const SizedBox(height: 30),// Espaçamento de 30 pixels entre widgets
            _buildAcoesPrincipais(), // Seção com os botões principais (Área Pix, Pagamentos, etc.)
            const SizedBox(height: 30),
            _buildCardSections(),  // Seção que exibe os cartões e outras informações
            const SizedBox(height: 30),
            _buildCartaoCredito(),// Seção que exibe informações do cartão de crédito
            const Divider(height: 1, thickness: 1), // Linha divisória
            const SizedBox(height: 30),
            _buildEmprestimo(), // Seção sobre o status do empréstimo
            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 30),
            _buildDescubraMais(), // Seção "Descubra Mais" com informações adicionais
          ],
        ),
      ),
    );
  }


  // Método para construir a seção de saldo da conta
  Widget _buildSaldoConta() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento dos textos à esquerda
      children: [
        Text("Conta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), // Título da seção
        SizedBox(height: 10),
        Text("R\$1000,00", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)), 
      ],
    );
  }

  // Método para construir os botões principais (Pix, Pagamentos, etc.)
  Widget _buildAcoesPrincipais() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // Espaçamento igual entre os botões
      children: [
        _buildIconButton("Área Pix", Icons.pix),// Botão para "Área Pix"
        _buildIconButton("Pagamentos", Icons.money), // Botão para "Pagamentos"
        _buildIconButton("QRCode", Icons.qr_code), // Botão para "QRCode"
        _buildIconButton("Transferir", Icons.attach_money), // Botão para "Transferir"
      ],
    );
  }


  // Método para construir um botão com ícone e texto
  Widget _buildIconButton(String text, IconData icon) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: const Color(0xFF8A05BE)), // Ícone com cor roxa
          onPressed: () {}, // Ação quando o botão é pressionado
        ),
        Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), // Texto abaixo do ícone
      ],
    );
  }

  // Método para construir a seção de cartões e outras informações
  Widget _buildCardSections() {
    return const Column(
      children: [
        Card(
          color: Color(0xFFF5F5F5), // Cartão com cor de fundo clara
          child: ListTile(
            leading: Icon(Icons.credit_card, color: Color(0xFF8A05BE)), // Ícone de cartão de crédito
            title: Text(
              "Meus Cartões",  // Título do cartão
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
                  fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF8A05BE)),// Texto com estilo roxo
            ),
            subtitle: Text("Acessando a área de planejamento"), // Subtítulo com mais informações
          ),
        ),
      ],
    );
  }

  // Método para construir a seção de cartão de crédito
  Widget _buildCartaoCredito() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Cartão de Crédito", style: TextStyle(fontSize: 24)), // Título da seção
        const SizedBox(height: 10),
        const Text("Fatura Fechada", style: TextStyle(fontSize: 18, color: Colors.black54)), // Status da fatura
        const SizedBox(height: 10),
        const Text("R\$2.123,39", style: TextStyle(fontSize: 24)), // Valor da fatura
        const SizedBox(height: 15),
        const Text("Vencimento dia 15", style: TextStyle(fontSize: 18, color: Colors.black54)), // Data de vencimento
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {}, // Ação quando o botão "Renegociar" é pressionado
          child: const Text("Renegociar", style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }

  // Método para construir a seção de empréstimo
  Widget _buildEmprestimo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Empréstimo", style: TextStyle(fontSize: 24)), // Título da seção
        SizedBox(height: 10),
        Text("Tudo certo! Você está em dia", style: TextStyle(fontSize: 18)), // Mensagem sobre o status do empréstimo
      ],
    );
  }

  // Método para construir a seção "Descubra Mais"
  Widget _buildDescubraMais() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Descubra Mais", style: TextStyle(fontSize: 24)), // Título da seção
        const SizedBox(height: 10),
        _buildSeguroVidaCard(), // Chama o método que constrói o cartão de seguro de vida
      ],
    );
  }

  // Método para construir o cartão de seguro de vida
  Widget _buildSeguroVidaCard() {
    return Card(
      child: Column(
        children: [
          
          // Exibe uma imagem para o cartão de seguro de vida
          Image.asset(
            'assets/seguro_vida.jpg',
            width: 500,  
            height: 220,  
            fit: BoxFit.cover,  // Ajusta a imagem para cobrir a área designada
          ),
          Padding( 
            padding: const EdgeInsets.all(10.0),  // Espaçamento interno no cartão
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Seguro de Vida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), // Título do cartão
                const SizedBox(height: 5),
                const Text("Cuide bem de quem você ama de um jeito simples", style: TextStyle(fontSize: 18, color: Colors.black54)), // Descrição do seguro de vida
                const SizedBox(height: 10),
                ElevatedButton(
            onPressed: () {}, // Ação quando o botão "Conhecer" é pressionado
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8A05BE),  // Cor de fundo do botão
            foregroundColor: Colors.white, // Cor do texto no botão
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

