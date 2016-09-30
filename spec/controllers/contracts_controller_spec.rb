require 'rails_helper'

RSpec.describe ContractsController, type: :controller do

	describe 'Contract #index' do
  context 'when getting index' do
    it 'renders all contracts' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
end
