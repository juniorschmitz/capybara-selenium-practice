class Product < SitePrism::Section
  element  :image, '.img-responsive'
  element  :name, '.product-name'
end

class FakeEcommercePage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  element  :input_search_form, '#search_query_top'
  element  :button_search, '.button-search'

  sections :products, Product, '.product-container'

  def search(query)
    input_search_form.set(query)
    button_search.click
  end
end
