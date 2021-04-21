# frozen_string_literal: true

require 'pipeline_tdd/handler'

describe 'PipelineTDD::Handler' do
  context 'basic operations' do
    it '404s on a miss' do
      h = PipelineTDD::Handler.new
      (status, content_type, body) = h.handle('/bogus')
      expect(status).to eq(404)
      expect(content_type).to eq('text/plain')
      expect(body).to eq('Not Found')
    end

    it 'handles /' do
      h = PipelineTDD::Handler.new
      (status, content_type, body) = h.handle('/')
      expect(status).to eq(200)
      expect(content_type).to eq('text/plain')
      expect(body).to eq('Hello, World!')
    end

    it 'handles /api' do
      h = PipelineTDD::Handler.new
      (status, content_type, body) = h.handle('/v1/api')
      expect(status).to eq(201)
      expect(content_type).to eq('application/json')
      expect(body).to eq('{"foo":"bar"}')
    end
  end
end
