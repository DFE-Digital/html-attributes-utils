require "debug"
require "active_support"
require "html_attributes_utils"
require "simplecov"

SimpleCov.start if ENV.fetch("SIMPLECOV") { "1" } == "1"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
