# frozen_string_literal: true

class PipelineTDD
  # class to handle URL paths inside PipelineTDD
  class Handler
    # handle returns a tuple of [ status, Content-Type, body]
    def handle(path)
      case path
      when '/'
        [200, 'text/plain', 'Hello, World!']
      else
        [404, 'text/plain', 'Not Found']
      end
    end
  end
end
