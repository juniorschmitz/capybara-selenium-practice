# language: pt

Funcionalidade: Testes no Ecommerce Fake
  Como um participante do minicurso de automação
  Gostaria de realizar exercícios envolvendo um Ecommerce
  Para poder praticar minhas habilidades com Ruby, Capybara e Selenium

  @buscar_por_termo_valido_ecommerce
  Cenário: Buscar por termo válido
    Dado que esteja na página inicial do ecommerce Fake
    Quando realizar uma busca pelo produto 'shirt'
    Então devem ser retornados produtos
    