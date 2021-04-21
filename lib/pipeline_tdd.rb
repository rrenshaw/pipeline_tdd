#!/usr/bin/ruby
# frozen_string_literal: true

require 'json'
require 'sinatra'

# top level class implements Sinatra::Base
class PipelineTDD < Sinatra::Base
  get('/') do
    'Hello, World!'
  end

  get('/v1/api') do
    status 201
    # body { { 'foo' => 'bar' }.to_json }
    content_type 'application/json'
    { 'foo' => 'bar' }.to_json
    # halt status, content_type, body
  end
end
