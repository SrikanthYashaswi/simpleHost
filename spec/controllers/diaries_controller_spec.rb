require 'spec_helper'

describe DiariesController ,:type => :controller do
  context "GET index" do
    it 'should list thoughts' do
      get :index
      response.should be_successful
    end
  end
end