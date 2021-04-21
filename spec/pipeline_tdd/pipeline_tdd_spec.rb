# frozen_string_literal: true

require 'rack/test'
require 'pipeline_tdd'

describe 'PipelineTDD' do
  include Rack::Test::Methods
  context 'basic operations' do
    let(:app) { PipelineTDD.new }

    it '404s on a miss' do
      get '/bogus'
      expect(last_response.status).to eq(404)
      expect(last_response.content_type).to eq('text/html;charset=utf-8')
      expect(last_response.body).to include('Sinatra doesn’t know this ditty')
    end

    it 'handles /' do
      get '/'
      expect(last_response.status).to eq(200)
      expect(last_response.content_type).to eq('text/html;charset=utf-8')
      expect(last_response.body).to eq('Hello, World!')
    end

    it 'handles /v1/api' do
      get '/v1/api'
      expect(last_response.status).to eq(201)
      expect(last_response.content_type).to eq('application/json')
      expect(last_response.body).to eq('{"foo":"bar"}')
    end
  end
end
