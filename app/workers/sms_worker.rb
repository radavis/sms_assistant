class SMSWorker
  include Sidekiq::Worker

  def perform(message)
    @client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    @client.account.messages.create(
      from: "+1#{ENV['TWILIO_NUMBER']}",
      to: "+1#{message.sender.phone}",
      body: message.body,
      #media_url: message.media_url
    )
  end
end
