require 'rails_helper'

describe User do
  it { should have_many(:sent_messages) }
  it { should have_many(:recieved_messages) }
  it { should belong_to(:country) }

  describe "#international_number" do
    it "returns a number with country code" do
      user = FactoryGirl.create(:user, phone_number: 1234567890)
      expect(user.international_number).to eq('+11234567890')
    end
  end
end
