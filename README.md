# 🔐 App Login (Flutter)

Aplicativo desenvolvido em **Flutter** para praticar a criação de interfaces de autenticação, formulários estilizados e navegação entre telas (`TelaLogin` e `TelaCadastroPerfil`).

---

## 🚀 Como o Projeto Começou

- **Configuração Inicial:** O projeto foi iniciado no ambiente de desenvolvimento utilizando o editor de código e o navegador Google Chrome para testes rápidos.
- **Criação da Tela de Login (`TelaLogin`):**
  - Estruturação do esqueleto visual básico da página.
  - Centralização dos elementos do formulário com margem de segurança nas bordas.
  - Adição de uma caixa centralizada contendo campos de texto (`TextField`) para e-mail e senha.
- **Navegação entre Telas:**
  - Criação da segunda tela (`TelaCadastroPerfil`) para simular o registro de novos usuários.
  - Transformação do texto *"Criar Conta"* em um elemento interativo usando `GestureDetector`, com transição de telas via `Navigator.push` e retorno via `Navigator.pop`.

---

## 🧩 Componentes do Flutter Utilizados

- **`Scaffold`**: Esqueleto visual base da tela, fornecendo a estrutura padrão que sustenta a barra superior (`AppBar`) e o corpo (`body`).
- **`AppBar`**: Barra de navegação superior usada para exibir o título da página e cores personalizadas.
- **`Center`**: Componente de alinhamento que centraliza todo o conteúdo interno na tela.
- **`Padding`**: Adiciona espaçamento interno (margens de segurança) para evitar que os elementos fiquem colados nas bordas do dispositivo.
- **`Container`**: Caixa utilizada para estilização, permitindo definir cor de fundo branca, bordas arredondadas e efeitos de sombra no formulário de login.
- **`Column`**: Empilha os elementos filhos verticalmente, organizando título, campos e botões.
- **`SizedBox`**: Widget invisível com tamanho fixo usado para criar espaçamentos verticais entre os campos de texto.
- **`Row`**: Alinha os elementos horizontalmente, usado no rodapé do formulário para separar *"Esqueci a senha"* e *"Criar Conta"*.
- **`Expanded`**: Utilizado dentro da `Row` para distribuir o espaço disponível de forma proporcional.

---

## 🛠️ Problemas Encontrados e Soluções

1. **Erro de Toolchain do Windows (Visual Studio)**
   - **Problema:** Ao tentar rodar o aplicativo pela primeira vez, o terminal apresentou o erro `Error: Unable to find suitable Visual Studio toolchain`, pois o ambiente nativo de desktop do Windows exigia ferramentas de C++ que não estavam instaladas.
   - **Solução:** Alteração da plataforma de execução para o **Google Chrome (Web)**, permitindo rodar e testar o app rapidamente no navegador.

2. **Erro de Sintaxe com `const` (Contexto de Navegação)**
   - **Problema:** O compilador apontou erros em cima do `Navigator.push` e de variáveis dinâmicas de contexto.
   - **Solução:** O Flutter não permite utilizar `const` em elementos que interagem dinamicamente com o `context`. Removemos o `const` do componente pai (`Expanded`) e mantivemos estático apenas o que era fixo.

3. **Fechamento Incorreto de Chaves e Colchetes**
   - **Problema:** Faltou fechar algumas chaves no final do método `build` da tela de login, gerando erros estruturais.
   - **Solução:** Organização da indentação linha por linha, fechando cada estrutura aninhada (`Row`, `Column`, `Container`, `Padding`, `Center`, `Scaffold` e `build`) na ordem inversa em que foram abertas.

---

## 📂 Estrutura do Projeto

```text
app_login/
├── lib/
│   └── main.dart          # Telas de login, cadastro e navegação
├── test/
│   └── widget_test.dart   # Testes de widget
└── pubspec.yaml           # Configurações e dependências do projeto
```

---

## ▶️ Como Executar o Projeto

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/therryd/app_login.git](https://github.com/therryd/app_login.git)
   cd app_login
   ```

2. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo (no Chrome ou emulador):**
   ```bash
   flutter run
   ```
