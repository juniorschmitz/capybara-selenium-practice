Dado("que esteja na página inicial do ecommerce Fake") do                    
  @fake_ecommerce = FakeEcommercePage.new
  @fake_ecommerce.load
end                                                                          
                                                                             
Quando("realizar uma busca pelo produto {string}") do |query|               
  @fake_ecommerce.search(query)
end                                                                          
                                                                             
Então("devem ser retornados produtos") do                                    
  expect(@fake_ecommerce.products.first).to have_image
  expect(@fake_ecommerce.products.first).to have_name
  expect(@fake_ecommerce.products.first.name.text).to have_content 'shirt'
end                                                                          
                                                                             