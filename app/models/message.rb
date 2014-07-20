class Message < ActiveRecord::Base
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'

  validates :sender, presence: true
  validates :recipient, presence: true

  def send_it
    @client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    @client.account.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: recipient.international_number,
      body: "#{body} #{media_url}"
    )
    logger.info "SMS Message sent to #{recipient.username}"
  end
end
