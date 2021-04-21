# frozen_string_literal: true

require_relative 'lib/pipeline_tdd/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '~> 2.7'
  spec.name = 'pipeline_tdd'
  spec.version = PipelineTDD::VERSION
  spec.authors = ['Rick Renshaw']
  spec.email = ['renshaw.rick@gmail.com']
  spec.description = <<-DESC
    Module for testing my full ruby->docker->kubernetes pipeline with Rspec
  DESC
  spec.summary = 'testing pipeline'
  spec.homepage = 'https://blog.bofh69.com/pipeline_tdd'
  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'simplecov'
  # spec.add_development_dependency 'covered'
  # spec.add_development_dependency 'parallel', '~> 1.10'
  # spec.add_development_dependency 'rake'
  # spec.add_development_dependency 'rspec', '~> 3.4'
  # spec.add_development_dependency 'rubocop-rake'
  # spec.add_development_dependency 'rubocop-rspec'
  # spec.add_dependency 'rack'
  # spec.add_dependency 'sinatra'
end
