require_relative '../spec_helper'

describe 'Root Path' do
  describe 'GET /' do
    before do
      get '/'
    end

    it 'should contain proper text' do
      expect(last_response.body).to(include("without an accident"))
    end

    it 'days should be a number' do
      expect(last_response.body).to have_tag('.days', :text => /\d+/i)
    end

  end
end