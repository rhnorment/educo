require 'spec_helper'

describe 'handing exceptions' do

  context 'when requesting an unavailable page' do

    it 'should present the page not found error page when visiting an unavailable route' do
      visit '/foo'

      expect(page).to have_text('Page not found.')
      expect(page).to have_link('OK')
    end

  end

end
