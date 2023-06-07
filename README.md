# Projeto One for All 👤

A partir de uma tabela de um banco de dados contendo um SpotifyClone, esse projeto consiste na normalização das informações da aplicação e a realização de desafios para obter as informações desejada utilizando o MySQL. 

* Projeto desenvolvido com MySQL e Docker
* Aplicação do conhecimento da normalização do banco de dados seguindo as Formas Normais.


### Instruções

- Para rodar o repositório localmente, realize o clone do projeto e utilize os comandos a seguir para inicializar o Docker:

```
docker-compose up -d
docker attach one_for_all 
npm install // para instalar as dependências
docker-compose down // para parar completamente a aplicação
```

### Desafios

| Desafio | Descrição |
|---|---|
| `1` | Criação do banco de dados |
| `2` | Query que exibe as colunas de "Canções", "Artistas" e "Albuns" contendo as suas respectivas quantidades |
| `3` | Query que exibe a coluna de o nome dos "Usuário" com a quantidade de músicas ouvidas e o total de minutos executados |
| `4` | Query contendo o nome dos "Usuário" e a suas determinadas condições (Ativo ou Inativo) |
| `5` | Query contendo as duas músicas mais executas pelos usuários |
| `6` | Query contendo os faturamentos: mínimo, máximo, médio e total dos usuários |
| `7` | Query contendo o nome dos "Artistas", "Albuns" e a quantidade de "Seguidores" |
| `8` | Query contendo as informações de um artista específico, com as colunas "Artista" e "Albuns" |
| `9` | Query que informa a quantidade de músicas no histórico de uma usuário específico |
| `10` | Query que informa a quantidade de reproduções de cada música dos usuários pertecentes aos planos gratuito ou pessoal |
| `11` | Query que modifica as informações das músicas mediante aos critérios estabelelecidos |
