require 'yaml'

class SearchPage
  include PageObject

  text_field :search_tbx, id: 'lst-ib'
  button :submit_btn, name: 'btnG'
  button :result, name: 'btnK'

  page_url 'https://www.google.com.vn/'

  def submit_search(info)
    self.search_tbx = info[:value1]
    submit_btn
  end

  def search_page?
    result_element.visible?
  end

end