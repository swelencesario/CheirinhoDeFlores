# CheirinhoDeFlores

- Este projeto é um aplicativo móvel de uma floricultura. A floricultura se chama “Cheirinho de Flores”. Este aplicativo é exclusivo para as plataformas iOS.

- O projeto está sendo desenvolvido com a linguagem Swift, utilizando o framework UIKit. Todos os produtos, assim como suas características, estão sendo requisitados a um Back End por meio de requisições Http. Todos os dados estão sendo salvos neste mesmo Back End. O link para o repositório do Back End está aqui: [Link do Back End](https://github.com/swelencesario/CheirinhoDeFloresBackend).

- Funcionalidades: 

- Criar uma conta de usuário
- Realizar login e ir para a primeira tela (Home)
- Na Home, é possível visualizar todos os produtos da loja constando imagem e nome do produto.
- Ao tocar em um dos produtos, o usuário é direcionado para a tela de detalhes, onde é possível visualizar: Imagem do produto em maior tamanho, nome e descrição e preço unitário.
- Na tela de detalhes do produto é possível escolher a quantidade desejada do produto e adicioná-lo ao carrinho.
- Por meio da Tab Bar (na base da tela), é possível navegar até a Home, Carrinho e Conta.
- Em todas as telas é possível navegar para a tela anterior clicando no botão de voltar.
- No carrinho, é possível ver a lista dos produtos que foram adicionados e editar a quantidade e/ou excluir produtos.
- No carrinho, é possível ver o preço total dos produtos e ir para o pagamento.

- Como rodar a aplicação:

- É necessário ter instalado:

- Sistema operacional macOS (não é possível buildar o projeto em outros sistemas operacionais).
- IDE de desenvolvimento Xcode.
- Cocoapods

- Para rodar:

- Faça o clone do projeto e abra o arquivo do tipo .xcworkspace. 
- Abra o terminal, vá para a pasta onde encontra-se o arquivo Podfile e use o seguinte comando em seu terminal: pod install
- No Xcode, clique no botão “run”.
- Navegue pelo aplicativo por meio do simulador do Xcode.
