Como o Projeto Começou:

Configuração Inicial: O projeto foi iniciado no ambiente de desenvolvimento (utilizando o 
editor de código e o navegador Google Chrome para testes rápidos).

Criação da Tela de Login (TelaLogin):

Começamos estruturando o esqueleto visual básico da página.

Centralizamos os elementos do formulário e aplicamos uma margem de segurança nas bordas.

Adicionamos uma caixa centralizada contendo campos de texto (TextField) para e-mail e senha.


Navegação entre Telas:

Criamos a segunda tela (TelaCadastroPerfil) para simular o registro de novos usuários.

Transformamos o texto "Criar Conta" em um elemento interativo usando o GestureDetector e 
programamos a transição de telas com o Navigator.push e o Navigator.pop para o retorno.

Componentes do Flutter Utilizados 

O código final emprega os principais blocos de construção do Flutter:

Scaffold: O esqueleto visual base da tela. Ele fornece a estrutura padrão que 
sustenta a barra superior (AppBar) e o corpo (body) do aplicativo.

AppBar: A barra de navegação superior localizada no topo da tela, usada para 
exibir o título da página e cores personalizadas.

Center: Um componente de alinhamento que força todo o seu conteúdo interno a 
ficar perfeitamente centralizado na tela.

Padding: Adiciona espaçamento interno (margens de segurança) para evitar que 
o s elementos fiquem colados nas bordas do dispositivo.

Container: Uma caixa versátil utilizada para estilização, permitindo definir cor de fundo branca, 
bordas arredondadas e efeitos de sombra no formulário de login.

Column: Um componente de layout que empilha os elementos filhos verticalmente (de cima para baixo), 
organizando o título, campos e botões em formato de coluna.

SizedBox: Um widget invisível com tamanhos fixos, utilizado para 
criar espaçamentos verticais organizados entre os campos de texto.

Row: Um componente de layout que alinha os elementos horizontalmente (um ao lado do outro), 
usado no rodapé do formulário para separar "Esqueci a senha" e "Criar Conta".

Expanded: Utilizado dentro de uma Row, ele faz com que os textos ocupem o 
espaço disponível de forma inteligente e proporcional.



Problemas Encontrados e Como Foram Resolvidos:

Durante o desenvolvimento deste aplicativo em Flutter, 
alguns desafios comuns de iniciante apareceram e foram solucionados da seguinte forma:

1. Erro de Toolchain do Windows (Visual Studio):
    Problema: Ao tentar rodar o aplicativo pela primeira vez, o terminal apresentou o erro `Error: Unable to find suitable Visual Studio toolchain`, pois o ambiente nativo de desktop do Windows exigia ferramentas de C++ que não estavam instaladas.
    Como Resolvi: Mudamos a plataforma de execução no ambiente de desenvolvimento para o Google Chrome (Web), permitindo rodar e testar o app de forma rápida no navegador sem precisar instalar ferramentas pesadas de desktop.

2. Erro de Sintaxe com a palavra `const` (Contexto de Navegação):
   Problema: O compilador apontou erros em cima do `Navigator.push` e de variáveis dinâmicas de contexto.
    Como Resolvi: Identificamos que o Flutter não permite utilizar a palavra `const` em elementos que mudam ou que interagem dinamicamente com o `context`. Removemos o `const` do componente pai (`Expanded`) e deixamos estático apenas o que era fixo, corrigindo o problema de compilação.

3. Fechamento incorreto de chaves e colchetes:
   Problema: Faltou fechar algumas chaves no final do método `build` da tela de login, gerando erros estruturais.
    Como Resolvi: Organizamos a identação do código linha por linha, fechando corretamente cada estrutura aninhada (`Row`, `Column`, `Container`, `Padding`, `Center`, `Scaffold` e `build`) na ordem inversa em que foram abertas.