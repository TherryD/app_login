import 'package:flutter/material.dart';

//Função principal
void main() {
  runApp(const MeuApp());
}

//Widget raiz do aplicativo
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //Remove a faixa de "Debug" do canto da tela
      home: TelaLogin(),
    ); // Primeira tela a exibir
  }
}

//Tela de login
class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    // Corrigido para "context" sem o "s" extra
    // Scaffold: Esqueleto principal da tela.
    return Scaffold(
      //AppBar: Barra superior do app.
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.orangeAccent,
      ),
      //Center: Joga o conteúdo no centro da tela
      body: Center(
        //Padding: Cria o espaçamento interno nas bordas.
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          //Container: A caixa branca com sombra e bordas arredondadas.
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            //Column: Empilha os elementos verticalmente.
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                //Sizedbox: Cria um espaço invisível para separar os itens.
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                const TextField(
                  obscureText: true, // esconde os caracteres para simular senha
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                //Row: Alinhar os elementos na horizontal.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Expanded: faz o primeiro texto ocupar o espaço livre
                    const Expanded(child: Text('Esqueci a senha')),
                    //Expanded: faz o segundo item ocupar o restante da linha
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          //Navegação: comando para a nova tela de perfil
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TelaCadastroPerfil(),
                            ),
                          );
                        },
                        child: const Text(
                          'Criar Conta',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Tela de Perfil/Cadastro
class TelaCadastroPerfil extends StatelessWidget {
  const TelaCadastroPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Novo Perfil'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome Completo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Criar Senha',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {
                //Navegação de retorno: Fecha esta tela e volta para a anterior
                Navigator.pop(context);
              },
              child: const Text('Salvar e Concluir'),
            ),
          ],
        ),
      ),
    );
  }
}
