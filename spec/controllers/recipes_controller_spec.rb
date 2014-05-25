require 'spec_helper'

describe RecipesController do

  describe 'index' do

    it 'should return success' do
      get :index

      expect(response).to be_success
    end

  end

  describe 'show' do

    before :each do
      @recipe = create :recipe
    end

    it 'should return success' do
      get :show, id: @recipe

      expect(response).to be_success
    end
  end

end