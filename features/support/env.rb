# frozen_string_literal: true

require 'bundler'
Bundler.require

Dotenv.load

ENVIRONMENT = YAML.load_file('environment.yml').freeze
