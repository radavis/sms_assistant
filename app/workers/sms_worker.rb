class SMSWorker
  include Sidekiq::Worker

  def perform(message)
    @client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    @client.account.messages.create(
      from: "+1#{ENV['TWILIO_NUMBER']}",
      to: "+1#{message.recipient.phone}",
      body: "#{message.body} #{message.media_url}"
    )
    logger.info "SMS Message sent to #{message.recipient.username}"
  end
end
