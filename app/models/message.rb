class Message < ActiveRecord::Base
  belongs_to :sender, class_name: User
  belongs_to :recipient, class_name: User

  after_validation :send_message

  private
  def send_message
    SMSWorker.new.perform(self)
  end
end
