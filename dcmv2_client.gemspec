# encoding: utf-8
require File.expand_path('../lib/dcmv2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'dcmv2_client'
  gem.version = DCMv2::VERSION::STRING
  gem.summary = 'A Ruby client for interacting with the GovDelivery HAL+JSON-based DCM v2 API'
  gem.description = "Ruby client for GovDelivery's HAL+JSON-based DCM v2 API. The API is designed for resource discovery and this Gem follows that same philosophy. Tested with Ruby versions 2.5.8, 2.6.6, and 2.7.1"
  gem.authors = ['GovDelivery']
  gem.email = ['support@govdelivery.com']
  gem.homepage = "http://govdelivery.com"

  gem.add_dependency 'httparty', '~>0.14.0'
  gem.add_dependency 'facets'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rspec-mocks'
  gem.add_development_dependency 'guard-rspec', '~> 2.6'
  gem.add_development_dependency 'dotenv'

  gem.files = %w{
    Gemfile
    README.md
    Rakefile
    dcmv2_client.gemspec
    .env.example
  } + Dir["lib/**/*"]
  gem.test_files = Dir["spec/**/*"]
  gem.require_paths = ['lib']
end

