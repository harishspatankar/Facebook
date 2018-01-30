require 'rails_helper'

RSpec.describe UserController do
  it '' do
    get :index, format: :json
    expect(response.status).to eq(200)
    expect(response.content_type).to eq('application/json')
  end
end
