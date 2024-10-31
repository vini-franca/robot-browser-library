# Projeto de Automação de Web - Browser Library

Este repositório contém a automação de testes Web utilizando o Robot Framework em conjunto com a **Browser Library**, ao invés da tradicional Selenium. A abordagem adotada visa melhorar a eficiência e a simplicidade dos testes de interface do usuário.

## 📚 Tecnologias Utilizadas

- **Robot Framework**: Um framework de automação de testes de código aberto que utiliza uma abordagem de palavras-chave para facilitar a criação de testes.
- **Browser Library**: Biblioteca que fornece uma interface para interação com elementos da web, permitindo ações como clique, preenchimento de formulários e navegação entre páginas.
- **Pabot Library**: Biblioteca utilizada para execução paralela de testes em múltiplos navegadores simultaneamente, aumentando a eficiência da execução dos testes.

## 📋 Estrutura dos Testes

O projeto foi estruturado em cenários de teste que abrangem tanto cenários positivos quanto negativos, garantindo que diferentes aspectos da aplicação sejam testados de forma eficaz.

### Cenários para a tela de Cadastro:
- **CT-01**: Validar registro de usuário
- **CT-02**: Validar cadastro de nome e sobrenome
- **CT-03**: Cadastrar Shipping Address

## 🏗 Estrutura do Projeto

A estrutura do projeto é organizada da seguinte maneira:

- `features/`: Contém os arquivos de teste em Robot Framework.
- `pages/`: Contém os arquivos com os xpaths e ID's dos elementos mapeados de cada página web.
- `resources/`: Arquivos de suporte, como variáveis e bibliotecas.
- `steps/`: Arquivos de implementação do BDD dos casos de testes.

## 📦 Instalação das Bibliotecas

Para instalar as bibliotecas necessárias para o projeto, você pode usar o arquivo requirements.txt. Execute o seguinte comando:

```bash
pip install -r requirements.txt
```

## 🚀 Execução

### Execução Local

Para executar os testes localmente e salvar os resultados, utilize o seguinte comando:

```bash
robot features/cadastro.robot --outputdir results
```

### Execução Paralela (Headless)

Para executar os testes de forma paralela em modo headless, utilize o comando abaixo:

```bash
pabot --processes 3 --testlevelsplit --outputdir results --variable BROWSER_MODE:true features/
```

### Execução Paralela (Modo Normal)

Para executar os testes de forma paralela no modo normal, utilize o comando:

```bash
pabot --processes 3 --testlevelsplit --outputdir results --variable features/
```

## 📎 Links Úteis

- [Documentação do Robot Framework](https://robotframework.org/)
- [Documentação da Browser Library](https://playwright.dev/python/docs/intro)
- [Documentação do Pabot](https://pabot.org/)

## 📬 Contato

Para dúvidas ou sugestões, você pode me encontrar em:

- [LinkedIn](https://www.linkedin.com/in/vinicius-ramos95/)
- [GitHub](https://github.com/Vini-Franca)

---

Agradeço por conferir o **Projeto de Automação de Web - Browser Library**. Sinta-se à vontade para contribuir ou abrir uma issue!