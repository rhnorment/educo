require 'spec_helper'

describe 'handing exceptions' do

  context 'when routing to an unavailable page' do

    it 'should present the page not found error page when visiting an unavailable route' do
      visit root_url
      visit '/foo'



    end

    it 'should return the user to the original URI when the user clicks the OK button'

  end

end
