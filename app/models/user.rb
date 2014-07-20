class User < ActiveRecord::Base
  has_many :messages
  belongs_to :country

  def international_number
    "+#{country.code}#{phone}"
  end
end
