class GoogleResultsPage < SitePrism::Page
  set_url ''

  element  :search_form, 'input.gLFyf'
  element  :button_search, '.gNO89b'
  elements :results, '.LC20lb'
end