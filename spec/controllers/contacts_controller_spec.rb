require 'spec_helper'

describe ContactsController do

  describe 'GET new contact page' do
    it 'returns http success' do
      get 'new'
      response.should be_success
    end
  end

end