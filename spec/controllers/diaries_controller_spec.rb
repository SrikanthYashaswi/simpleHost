require 'spec_helper'

describe DiariesController ,:type => :controller do
  context "GET index" do
    it 'should list thoughts' do
      get :index
      response.should be_successful
    end
  end

  context 'create new Diary' do
    it 'should create new diary' do
      post :create,
           name: 'My First Diary'
      expect(Diary.count).to eq(1)
      diary = Diary.last
      expect(diary.name).to eq('My First Diary')
    end
  end
end