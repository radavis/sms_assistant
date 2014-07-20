class SMSWorker
  include Sidekiq::Worker

  def perform(message)
    message.send_it
  end
end
