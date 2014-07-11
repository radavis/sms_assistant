require 'rails_helper'

feature 'send a sms message' do
  scenario 'user sends a message' do
    message = FactoryGirl.build(:message)

    visit new_message_path
    select message.sender.username, from: "message[sender_id]"
    select message.recipient.username, from: "message[recipient_id]"
    fill_in "Body", with: message.body
    fill_in "Media url", with: message.media_url
    click_on "Send Message"

    expect(page).to have_content("Your message to #{message.recipient.username} has been sent!")
  end
end
