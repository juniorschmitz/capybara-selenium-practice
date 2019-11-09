Dado("que esteja na página inicial do Google") do
  @google_page = GooglePage.new
  @google_page.load
end

Então("o formulário de busca deve ser apresentado") do
  expect(@google_page).to have_search_form
end

Quando("buscar por {string}") do |query|
  @google_page.search_form.set(query)
  @google_page.button_search.click
  @google_results_page = GoogleResultsPage.new
end

Então("resultados devem ser retornados") do
  expect(@google_results_page.text).to match(/#{'www.compasso.com.br'}/i)
  expect(@google_results_page).to have_results
end

Quando("acessar a primeira página de resultados") do
  @google_results_page.results.first.click
  @result_page = ResultPage.new
end

Então("devo visualizar a página da Compasso") do
  expect(@result_page.current_url).to have_content 'compasso'
end