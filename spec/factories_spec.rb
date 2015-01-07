require "rails_helper"

FactoryGirl.factories.map(&:name).each do |factory|
  describe "The #{factory} factory" do
    it "is valid" do
      expect(FactoryGirl.build(factory)).to be_valid
    end
  end
end
