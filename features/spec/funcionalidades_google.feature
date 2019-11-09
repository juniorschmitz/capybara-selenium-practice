# language: pt

@testes_google
Funcionalidade: funcionalidades do Google

@carregar_google
Cenário: Carregar a home page
  Dado que esteja na página inicial do Google
  Então o formulário de busca deve ser apresentado

@busca_google
Cenário: Buscar por termo no Google
  Dado que esteja na página inicial do Google
  Quando buscar por 'compasso'
  Então resultados devem ser retornados

@acessar_primeiro_resultado_busca
Cenário: Buscar por termo e acessar a primeira página
  Dado que esteja na página inicial do Google
  Quando buscar por 'compasso'
  E acessar a primeira página de resultados
  Então devo visualizar a página da Compasso