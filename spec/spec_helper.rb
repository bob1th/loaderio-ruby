require 'simplecov'

ENV["LOADERIO_API_KEY"] = "api_key"

SimpleCov.start do
  add_filter '/spec/'

  add_group 'Libraries', '/lib/'
end

RSpec.configure do |config|
  require "loaderio"

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.order = 'random'
end
