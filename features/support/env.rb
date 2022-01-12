# frozen_string_literal: true

require 'bundler'
Bundler.require

Dotenv.load if ENV['pipefy_api_token'].nil?

ENVIRONMENT = YAML.load_file('environment.yml').freeze
