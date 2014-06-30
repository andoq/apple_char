require 'spec_helper'

RSpec.describe RecipesController, type: :controller do

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

    describe 'url redirection' do
      it 'should do a 301 redirect to the correct url' do
        get :show, id: "#{@recipe.id}-#{@recipe.name.parameterize}"

        expect(response).to redirect_to recipe_path(@recipe)
        expect(response.status).to eql(301)
      end
    end
  end
end