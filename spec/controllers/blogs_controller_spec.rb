require 'rails_helper'

RSpec.describe Api::V1::BlogsController, type: :controller do
  context 'GET #index' do
    it 'should get index page' do
      get :index
      expect(response).to be_successful
    end
  end

  it "should create blog" do
      post 'create', params: { blog: { title: 'Helloo', body: 'Hiiiiii' } }
    expect(response).to be_successful
  end
end
