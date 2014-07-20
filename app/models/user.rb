class User < ActiveRecord::Base
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :recieved_messages, class_name: 'Message', foreign_key: 'recipient_id'
  belongs_to :country

  validates :username, presence: true
  validates :phone_number, presence: true

  def international_number
    "+#{country.code}#{phone_number}"
  end
end
