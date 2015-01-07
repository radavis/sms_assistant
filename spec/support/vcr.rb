VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.default_cassette_options = { record: :new_episodes }
  c.filter_sensitive_data('<TWILIO_ACCOUNT_SID>') { ENV['TWILIO_ACCOUNT_SID'] }
  c.filter_sensitive_data('<TWILIO_AUTH_TOKEN>') { ENV['TWILIO_AUTH_TOKEN'] }
  c.filter_sensitive_data('<TWILIO_NUMBER>') { ENV['TWILIO_NUMBER'] }
end
