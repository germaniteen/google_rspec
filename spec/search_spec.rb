require_relative '../spec/spec_helper'
require_relative '../support/pages/search_page'
require_relative '../support/common_methods'

something_to_search ||= data_file[:search_value]

describe "On Google search page" do
  before(:each) do
    visit SearchPage
  end

  context 'search the thing from testdata file' do
    before do
      on(SearchPage).submit_search(something_to_search)
    end

    it "should return result page" do
      expect(on(SearchPage).search_page?).to be false
    end

  end


end