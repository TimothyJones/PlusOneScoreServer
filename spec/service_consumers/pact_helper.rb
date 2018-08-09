require 'pact/provider/rspec'
require './config/initializers/git.rb'

Pact.service_provider "The Plus One Game ScoreBoard Service" do

  honours_pact_with 'The Plus One Game Client' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/pact-foundation/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri "https://#{ENV['PACT_BROKER_USERNAME']}:#{ENV['PACT_BROKER_PASSWORD']}@test.pact.dius.com.au/pacts/provider/The%20Plus%20One%20Game%20ScoreBoard%20Service/consumer/The%20Plus%20One%20Game%20Client/latest"
  end

  app_version Git::VERSION
  publish_verification_results true
end
