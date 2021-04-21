# frozen_string_literal: true

require 'json'

class PipelineTDD
  # class to handle URL paths inside PipelineTDD
  class Handler
    # handle returns a tuple of [ status, Content-Type, body]
    def handle(path)
      api_ret = { foo: :bar }
      case path
      when '/'
        [200, 'text/plain', 'Hello, World!']
      when '/v1/api'
        [201, 'application/json', api_ret.to_json]
      else
        [404, 'text/plain', 'Not Found']
      end
    end
  end
end
