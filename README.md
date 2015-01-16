# SMS Assistant [![Build Status](https://travis-ci.org/radavis/sms_assistant.svg?branch=master)](https://travis-ci.org/radavis/sms_assistant) [![Code Climate](https://codeclimate.com/github/radavis/sms_assistant.png)](https://codeclimate.com/github/radavis/sms_assistant) [![Coverage Status](https://coveralls.io/repos/radavis/sms_assistant/badge.png)](https://coveralls.io/r/radavis/sms_assistant)

Experiments with the Twilio API.

## Features

### Uses the Twilio API to send SMS messages
* [message model](https://github.com/radavis/sms_assistant/blob/master/app/models/message.rb)

### Sidekiq worker to handle the sending of SMS messages
* [worker](https://github.com/radavis/sms_assistant/blob/master/app/workers/sms_worker.rb)

### Uses the VCR gem to cache HTTP requests when testing
Simply add `:vcr` to your test.
* [configuration](https://github.com/radavis/sms_assistant/blob/master/spec/support/vcr.rb)
* [example](https://github.com/radavis/sms_assistant/blob/refactor_seeder/spec/features/send_a_sms_message_spec.rb)

### Factories with tests
* [factories](https://github.com/radavis/sms_assistant/tree/master/spec/factories)
* [factory tests](https://github.com/radavis/sms_assistant/blob/master/spec/support/factories_spec.rb)
* [rake task](https://github.com/radavis/sms_assistant/blob/master/lib/tasks/factory_specs.rake)

### Travis-CI Environment Variables
`gem install travis`, then, the following command will allow you to encrypt and add environment variables to the .travis.yml file:
```
travis encrypt ENV_KEY=<value> -r <username>/<repository> --add
```
